import React, { useEffect, useState } from 'react';
import {
  Box,
  Typography,
  Button,
  Stack,
  Paper,
  Divider,
} from '@mui/material';
import { useNavigate, useParams } from 'react-router-dom';
import OrderService from '../../services/OrderService';
import VariantService from '../../services/VariantService';
import ProductService from '../../services/ProductService';
import { OrderDto } from '../../models/Order';
import { VariantDto } from '../../models/Variant';
import { toast } from 'material-react-toastify';
import ConfirmationPopup from '../shared/ConfirmationPopup';
import ArrowBackIosNewIcon from '@mui/icons-material/ArrowBackIosNew';
import UnderlinedButton from '../shared/UnderlinedButton';
import EmailService from '../../services/EmailService';
import UserService from '../../services/UserService';

const AdminOrderDetails: React.FC = () => {
  const { orderId } = useParams<{ orderId: string }>();
  const navigate = useNavigate();

  const [order, setOrder] = useState<OrderDto | null>(null);
  const [variants, setVariants] = useState<Record<string, VariantDto>>({});
  const [productNames, setProductNames] = useState<Record<string, string>>({});
  const [isOrderCancelledOrDelivered, setIsOrderCancelledOrDelivered] = useState(false);
  const [cancelDialogOpen, setCancelDialogOpen] = useState(false);

  useEffect(() => {
    fetchOrder();
  }, [orderId]);

  useEffect(() => {
    if (order) {
      setIsOrderCancelledOrDelivered(order.status === "Cancelled" || order.status === "Delivered");
    }
  }, [order]);

  const fetchOrder = async () => {
    if (!orderId) return;
    try {
      const fetchedOrder = await OrderService.getOrderById(orderId);
      setOrder(fetchedOrder);

      const variantMap: Record<string, VariantDto> = {};
      const productNameMap: Record<string, string> = {};

      await Promise.all(
        fetchedOrder.items.map(async (item) => {
          const variant = await VariantService.getVariantById(item.variantId);
          variantMap[item.variantId] = variant;

          const product = await ProductService.getProductByVariantId(item.variantId);
          productNameMap[item.variantId] = product.name;
        })
      );

      setVariants(variantMap);
      setProductNames(productNameMap);
    } catch (err) {
      toast.error("Failed to fetch product details");
      console.error('Failed to fetch order details', err);
    }
  };

  const handleUpdateStatus = async (status: "Shipped" | "Cancelled") => {
    if (!orderId || !order) return;

    try {
      const updated = await OrderService.updateOrderStatus(orderId, { status });
      setOrder(updated);

      try {
        const user = await UserService.getUserById(order.userId);

        await EmailService.sendOrderStatusUpdate({
          email: user.email,
          orderId: order.orderId,
          newStatus: status,
        });
      } catch (emailErr) {
        console.warn("Failed to send status update email:", emailErr);
      }

      toast.success(`Order marked as ${status}`);
      navigate("/admin/order-manager");
    } catch {
      toast.error(`Failed to update order to ${status}`);
    }
  };

  if (!order) return <Typography>Loading order details...</Typography>;

  return (
    <Box sx={{ p: 3, maxWidth: 1400, mx: 'auto', mb: 10 }}>
      <UnderlinedButton
        startIcon={<ArrowBackIosNewIcon />}
        onClick={() => navigate("/admin/order-manager")}
        sx={{ mb: 2, mt: 1 }}
      >
        BACK
      </UnderlinedButton>

      <Typography variant="h5" gutterBottom>
        ORDER DETAILS
      </Typography>

      <Box mb={3}>
        <Typography variant="body1">
          <strong>Order ID:</strong> {order.orderId}
        </Typography>
        <Typography variant="body1">
          <strong>Status:</strong> {order.status}
        </Typography>
        <Typography variant="body1">
          <strong>Created:</strong> {new Date(order.createdAt).toLocaleString()}
        </Typography>
        <Typography variant="body1">
          <strong>User ID:</strong> {order.userId}
        </Typography>
      </Box>

      <Divider sx={{ mb: 3 }} />

      <Stack spacing={3}>
        {order.items.map((item) => {
          const variant = variants[item.variantId];
          const productName = productNames[item.variantId];

          return (
            <Paper
              key={item.orderItemId}
              variant="outlined"
              sx={{
                borderColor: "secondary.light",
                p: 3,
                display: 'flex',
                flexDirection: { xs: 'column', sm: 'row' },
                gap: 3,
                alignItems: 'center',
              }}
            >
              {/* Image */}
              <Box
                component="img"
                src={variant?.images?.[0]?.imageUrl || '/placeholder.jpg'}
                alt={productName || 'Product'}
                sx={{
                  width: 140,
                  height: 140,
                  objectFit: 'contain',
                  borderRadius: 2,
                }}
              />

              {/* Details */}
              <Box flex={1}>
                <Typography fontWeight="bold" fontSize="1.1rem">
                  {productName || 'Unknown Product'}
                </Typography>
                <Typography>
                  Size: {variant?.size} | Color: {variant?.color}
                </Typography>
                <Typography>
                  Quantity: {item.quantity} × ${item.priceAtPurchase.toFixed(2)}
                </Typography>
                <Typography color="text.secondary">
                  SKU: {variant?.sku || 'N/A'}
                </Typography>
              </Box>
            </Paper>
          );
        })}
      </Stack>

      <Box display="flex" justifyContent="flex-end" mt={3}>
        <Typography variant="h6">
          Total: $
          {order.items
            .reduce(
              (total, item) => total + item.quantity * item.priceAtPurchase,
              0
            )
            .toFixed(2)}
        </Typography>
      </Box>

      <Divider sx={{ my: 4 }} />

      <Stack
        direction={{ xs: 'column', sm: 'row' }}
        spacing={2}
        justifyContent="flex-end"
        alignItems="stretch"
      >
        <Button
          variant="outlined"
          color="error"
          sx={{ minWidth: 140 }}
          disabled={isOrderCancelledOrDelivered}
          onClick={() => setCancelDialogOpen(true)}
        >
          CANCEL ORDER
        </Button>
        <Button
          variant="contained"
          color="success"
          disabled={isOrderCancelledOrDelivered}
          sx={{ minWidth: 140 }}
          onClick={() => handleUpdateStatus("Shipped")}
        >
          PROCEED
        </Button>
      </Stack>

      <ConfirmationPopup
        open={cancelDialogOpen}
        onClose={() => setCancelDialogOpen(false)}
        onConfirm={() => handleUpdateStatus("Cancelled")}
        title={''}
        message={"Are you sure you want to cancel this order? This action cannot be undone."}
      />
    </Box>
  );
};

export default AdminOrderDetails;
