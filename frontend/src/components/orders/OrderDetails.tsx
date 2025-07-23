import React, { useEffect, useState } from 'react';
import {
  Box,
  Typography,
  Paper,
  Button,
  Divider,
  CircularProgress,
  Stack,
} from '@mui/material';
import { useParams, useNavigate } from 'react-router-dom';
import OrderService from '../../services/OrderService';
import VariantService from '../../services/VariantService';
import ProductService from '../../services/ProductService';
import { OrderDto } from '../../models/Order';
import { VariantDto } from '../../models/Variant';
import ConfirmationPopup from '../shared/ConfirmationPopup';
import VariantPreviewModal from '../cart/VariantPreviewModal';
import UnderlinedButton from '../shared/UnderlinedButton';

const formatDate = (date: string) => new Date(date).toLocaleDateString();

const OrderDetails: React.FC = () => {
  const { orderId } = useParams<{ orderId: string }>();
  const navigate = useNavigate();

  const [order, setOrder] = useState<OrderDto | null>(null);
  const [loading, setLoading] = useState(true);
  const [cancelPopupOpen, setCancelPopupOpen] = useState(false);
  const [variantPreviewOpen, setVariantPreviewOpen] = useState(false);
  const [selectedVariantId, setSelectedVariantId] = useState<string | null>(null);
  const [variantDetails, setVariantDetails] = useState<Record<string, VariantDto>>({});
  const [productNames, setProductNames] = useState<Record<string, string>>({});

  useEffect(() => {
    const fetchOrder = async () => {
      if (!orderId) return;
      try {
        const data = await OrderService.getOrderById(orderId);
        setOrder(data);

        const variantMap: Record<string, VariantDto> = {};
        const productNameMap: Record<string, string> = {};

        await Promise.all(
          data.items.map(async (item) => {
            const variant = await VariantService.getVariantById(item.variantId);
            variantMap[item.variantId] = variant;

            const product = await ProductService.getProductByVariantId(item.variantId);
            productNameMap[item.variantId] = product.name;
          })
        );

        setVariantDetails(variantMap);
        setProductNames(productNameMap);
      } catch (err) {
        console.error('Failed to fetch order details', err);
      } finally {
        setLoading(false);
      }
    };

    fetchOrder();
  }, [orderId]);

  const handleCancelOrder = async () => {
    setCancelPopupOpen(false);
    console.log('Order canceled:', order?.orderId);
  };

  const handleOpenVariantPreview = (variantId: string) => {
    setSelectedVariantId(variantId);
    setVariantPreviewOpen(true);
  };

  const handleCloseVariantPreview = () => {
    setSelectedVariantId(null);
    setVariantPreviewOpen(false);
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'Pending':
        return 'orange';
      case 'Shipped':
        return 'blue';
      case 'Delivered':
        return 'green';
      case 'Cancelled':
        return 'red';
      default:
        return 'grey';
    }
  };

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" height="60vh">
        <CircularProgress />
      </Box>
    );
  }

  if (!order) {
    return (
      <Box textAlign="center" mt={5}>
        <Typography variant="h5">Order not found.</Typography>
      </Box>
    );
  }

  const purchaseDate = new Date(order.createdAt);
  const estimatedArrival = new Date(purchaseDate);
  estimatedArrival.setDate(estimatedArrival.getDate() + 14);

  return (
    <Box sx={{ maxWidth: 1400, margin: 'auto', mb: 10, mt: 4, px: 2, fontFamily: "'Montserrat', sans-serif" }}>
      <Typography variant="h4" gutterBottom>
        ORDER DETAILS
      </Typography>

      <Box display="flex" justifyContent="space-between" mb={2}>
        <UnderlinedButton variant="outlined" sx={{ borderColor: "secondary.main" }} onClick={() => navigate(-1)}>
          Back
        </UnderlinedButton>

        {order.status === 'Pending' && (
          <Button variant="contained" color="error" onClick={() => setCancelPopupOpen(true)}>
            Cancel Order
          </Button>
        )}
      </Box>

      <Paper sx={{ p: 3 }}>
        <Typography variant="h6" gutterBottom>Order Summary</Typography>
        <Typography variant="body1">Order ID: <strong>{order.orderId}</strong></Typography>
        <Typography variant="body1">
          Status:{' '}
          <Box
            component="span"
            sx={{
              fontWeight: 'bold',
              color: getStatusColor(order.status),
              textTransform: 'uppercase',
            }}
          >
            {order.status}
          </Box>
        </Typography>

        <Typography variant="body1">Date of Purchase: {formatDate(order.createdAt)}</Typography>
        <Typography variant="body1">
          Estimated Arrival: {formatDate(estimatedArrival.toISOString())}
        </Typography>

        {order.shippingAddress && (
          <Typography variant="body1" sx={{ mt: 1 }}>
            Shipping Address: <strong>{order.shippingAddress}</strong>
          </Typography>
        )}
      </Paper>

      <Divider sx={{ my: 2 }} />

      <Typography variant="h6" gutterBottom sx={{ fontFamily: "'Montserrat', sans-serif", fontWeight: 400 }}>
        ITEMS IN ORDER
      </Typography>

      <Stack spacing={2}>
        {order.items.map((item) => {
          const variant = variantDetails[item.variantId];
          const productName = productNames[item.variantId];
          const imageUrl = variant?.images?.[0]?.imageUrl || '/placeholder.jpg';

          return (
            <Paper
              key={item.orderItemId}
              variant="outlined"
              sx={{
                p: 3,
                display: 'flex',
                flexDirection: { xs: 'column', sm: 'row' },
                alignItems: 'center',
                gap: 3,
                minHeight: 160,
              }}
            >
              {/* Image */}
              <Box
                component="img"
                src={imageUrl}
                alt={productName || 'Product'}
                sx={{
                  width: 140,
                  height: 140,
                  objectFit: 'contain',
                  borderRadius: 2,
                  backgroundColor: '#f9f9f9',
                }}
              />

              {/* Info */}
              <Box flex={1}>
                <Typography
                  fontWeight="bold"
                  fontSize="1.2rem"
                  sx={{ cursor: 'pointer' }}
                  onClick={() => handleOpenVariantPreview(item.variantId)}
                >
                  {productName || 'Unknown Product'}
                </Typography>
                <Typography color="text.secondary" sx={{ mb: 1 }}>
                  {variant ? `${variant.size} | ${variant.color}` : 'Loading...'}
                </Typography>
                <Typography variant="body1">
                  Quantity: {item.quantity} × ${item.priceAtPurchase.toFixed(2)}
                </Typography>
                <Typography variant="body2" color="text.secondary">
                  Total: ${(item.priceAtPurchase * item.quantity).toFixed(2)}
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
            .reduce((sum, item) => sum + item.quantity * item.priceAtPurchase, 0)
            .toFixed(2)}
        </Typography>
      </Box>

      {/* Variant Preview Modal */}
      <VariantPreviewModal
        open={variantPreviewOpen}
        onClose={handleCloseVariantPreview}
        variantId={selectedVariantId}
      />

      {/* Cancel Confirmation Popup */}
      <ConfirmationPopup
        open={cancelPopupOpen}
        onClose={() => setCancelPopupOpen(false)}
        onConfirm={handleCancelOrder}
        title="Cancel Order"
        message="Are you sure you want to cancel this order?"
        confirmButtonText="Yes, Cancel"
        confirmColor="error"
        cancelButtonText="No"
      />
    </Box>
  );
};

export default OrderDetails;
