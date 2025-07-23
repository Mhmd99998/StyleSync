import React, { useEffect, useState } from 'react';
import {
  Accordion,
  AccordionSummary,
  AccordionDetails,
  Typography,
  Box,
  Button,
  CircularProgress,
  Table,
  TableBody,
  TableCell,
  TableContainer,
  TableHead,
  TableRow,
  Paper,
  useMediaQuery,
  Chip
} from '@mui/material';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import OrderService from '../../services/OrderService';
import { OrderDto } from '../../models/Order';
import { useSelector } from 'react-redux';
import { RootState } from '../../redux/store';
import { useNavigate } from 'react-router-dom';
import { useTheme } from '@mui/material/styles';

const OrdersList: React.FC = () => {
  const userId = useSelector((state: RootState) => state.user.userId);
  const [orders, setOrders] = useState<OrderDto[]>([]);
  const [loading, setLoading] = useState(true);
  const navigate = useNavigate();
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  useEffect(() => {
    const fetchOrders = async () => {
      try {
        const data = await OrderService.getOrdersForUser(userId!);
        setOrders(data);
      } catch (error) {
        console.error('Failed to fetch orders:', error);
      } finally {
        setLoading(false);
      }
    };

    if (userId) {
      fetchOrders();
    }
  }, [userId]);

  const formatDate = (dateString: string) => {
    return new Date(dateString).toLocaleDateString();
  };

  const getEstimatedArrival = (dateString: string) => {
    const estimated = new Date(dateString);
    estimated.setDate(estimated.getDate() + 14);
    return estimated.toLocaleDateString();
  };

  const getStatusColor = (status: string) => {
    switch (status.toLowerCase()) {
      case 'pending':
        return 'warning';
      case 'shipped':
        return 'info';
      case 'delivered':
        return 'success';
      case 'cancelled':
        return 'error';
      default:
        return 'default';
    }
  };

  const pendingShippedOrders = orders.filter(
    (order) => order.status === 'Pending' || order.status === 'Shipped'
  );
  const completedOrders = orders.filter(
    (order) => order.status === 'Delivered' || order.status === 'Cancelled'
  );

  const renderOrderTable = (orders: OrderDto[]) => (
    <TableContainer component={Paper} elevation={2} sx={{ borderRadius: 3 }}>
      <Table>
        <TableHead>
          <TableRow sx={{ backgroundColor: '#f9f9f9' }}>
            <TableCell sx={{ fontWeight: 600 }}>Order ID</TableCell>
            <TableCell sx={{ fontWeight: 600 }}>Status</TableCell>
            <TableCell sx={{ fontWeight: 600 }}>Date of Purchase</TableCell>
            <TableCell sx={{ fontWeight: 600 }}>Estimated Arrival</TableCell>
            <TableCell align="right" sx={{ fontWeight: 600 }}>Actions</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {orders.map((order) => (
            <TableRow
              key={order.orderId}
              hover
              sx={{
                transition: 'background 0.2s',
                '&:hover': {
                  backgroundColor: '#f0f4ff',
                },
              }}
            >
              <TableCell>{order.orderId}</TableCell>
              <TableCell>
                <Chip
                  label={order.status}
                  color={getStatusColor(order.status)}
                  variant="outlined"
                  size="small"
                  sx={{ textTransform: 'capitalize' }}
                />
              </TableCell>
              <TableCell>{formatDate(order.createdAt)}</TableCell>
              <TableCell>{getEstimatedArrival(order.createdAt)}</TableCell>
              <TableCell align="right">
                <Button
                  variant="outlined"
                  size="small"
                  color="primary"
                  sx={{ textTransform: 'none', fontWeight: 500 }}
                  onClick={() => navigate(`/orders/${order.orderId}`)}
                >
                  View
                </Button>
              </TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" mt={6}>
        <CircularProgress />
      </Box>
    );
  }

  return (
    <Box
      maxWidth="lg"
      mx="auto"
      mt={4}
      px={2}
      sx={{ fontFamily: `'Poppins', sans-serif` }}
    >
      <Typography variant="h4" gutterBottom fontWeight={600}>
        Your Orders
      </Typography>

      <Accordion
        defaultExpanded
        disableGutters
        sx={{
          mb: 2,
          borderRadius: 2,
          boxShadow: 'none',
          border: '1px solid #e0e0e0',
        }}
      >
        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
          <Typography variant="h6" fontWeight={500}>
            Pending & Shipped
          </Typography>
        </AccordionSummary>
        <AccordionDetails>
          {pendingShippedOrders.length > 0 ? (
            renderOrderTable(pendingShippedOrders)
          ) : (
            <Typography color="text.secondary">
              No pending or shipped orders.
            </Typography>
          )}
        </AccordionDetails>
      </Accordion>

      <Accordion
        disableGutters
        sx={{
          borderRadius: 2,
          boxShadow: 'none',
          border: '1px solid #e0e0e0',
        }}
      >
        <AccordionSummary expandIcon={<ExpandMoreIcon />}>
          <Typography variant="h6" fontWeight={500}>
            Delivered & Cancelled
          </Typography>
        </AccordionSummary>
        <AccordionDetails>
          {completedOrders.length > 0 ? (
            renderOrderTable(completedOrders)
          ) : (
            <Typography color="text.secondary">
              No delivered or cancelled orders.
            </Typography>
          )}
        </AccordionDetails>
      </Accordion>
    </Box>
  );
};

export default OrdersList;
