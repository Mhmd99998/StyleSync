import React, { useEffect, useState } from 'react';
import {
  Box,
  Tabs,
  Tab,
  Typography,
  Card,
  CardContent,
  Stack,
  useMediaQuery,
  Divider,
} from '@mui/material';
import { useTheme } from '@mui/material/styles';
import OrderService from '../../services/OrderService';
import { OrderDto } from '../../models/Order';
import { useNavigate } from 'react-router-dom';
import Pagination from '../shared/Pagination';

const AdminOrderManager: React.FC = () => {
  const theme = useTheme();
  const navigate = useNavigate();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  const [orders, setOrders] = useState<OrderDto[]>([]);
  const [tab, setTab] = useState<'Pending' | 'Shipped' | 'Delivered' | 'Cancelled'>('Pending');

  const [currentPage, setCurrentPage] = useState(1);
  const ordersPerPage = 10;

  useEffect(() => {
    const fetchOrders = async () => {
      const allOrders = await OrderService.getAllOrders();
      const sorted = allOrders.sort(
        (a: OrderDto, b: OrderDto) => new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime()
      );
      setOrders(sorted);
    };

    fetchOrders();
  }, []);

  const handleTabChange = (_event: React.SyntheticEvent, newValue: typeof tab) => {
    setTab(newValue);
    setCurrentPage(1); // Reset pagination on tab change
  };

  const getOrderCount = (status: 'Pending' | 'Shipped' | 'Delivered' | 'Cancelled') => {
    return orders.filter((order) => order.status === status).length;
  };

  const filteredOrders = orders.filter((order) => order.status === tab);
  const totalPages = Math.ceil(filteredOrders.length / ordersPerPage);

  const paginatedOrders = filteredOrders.slice(
    (currentPage - 1) * ordersPerPage,
    currentPage * ordersPerPage
  );

  return (
    <Box sx={{ p: isMobile ? 2 : 4, mb: 4 }}>
      <Typography variant="h5" mb={2}>
        Manage Orders
      </Typography>

      <Tabs
        value={tab}
        onChange={handleTabChange}
        variant="scrollable"
        scrollButtons="auto"
        allowScrollButtonsMobile
        sx={{ mb: 3 }}
      >
        <Tab label={`Pending (${getOrderCount('Pending')})`} value="Pending" />
        <Tab label={`Shipped (${getOrderCount('Shipped')})`} value="Shipped" />
        <Tab label={`Delivered (${getOrderCount('Delivered')})`} value="Delivered" />
        <Tab label={`Cancelled (${getOrderCount('Cancelled')})`} value="Cancelled" />
      </Tabs>

      <Stack spacing={2}>
        {paginatedOrders.length === 0 ? (
          <Typography color="text.secondary">No orders found for this category.</Typography>
        ) : (
          paginatedOrders.map((order) => (
            <Card
              key={order.orderId}
              variant="outlined"
              sx={{
                cursor: 'pointer',
                transition: '0.2s ease',
                '&:hover': { boxShadow: 4 },
              }}
              onClick={() => navigate(`/admin/orders/${order.orderId}`)}
            >
              <CardContent>
                <Stack
                  direction={isMobile ? 'column' : 'row'}
                  spacing={isMobile ? 1 : 4}
                  justifyContent="space-between"
                  alignItems={isMobile ? 'flex-start' : 'center'}
                >
                  <Box>
                    <Typography variant="subtitle2">Order ID</Typography>
                    <Typography>{order.orderId}</Typography>
                  </Box>
                  <Box>
                    <Typography variant="subtitle2">User ID</Typography>
                    <Typography>{order.userId}</Typography>
                  </Box>
                  <Box>
                    <Typography variant="subtitle2">Created</Typography>
                    <Typography>{new Date(order.createdAt).toLocaleString()}</Typography>
                  </Box>
                  <Box>
                    <Typography variant="subtitle2">Status</Typography>
                    <Typography sx={{ textTransform: 'capitalize' }}>{order.status}</Typography>
                  </Box>
                </Stack>

                <Divider sx={{ my: 1 }} />

                <Typography variant="body2" color="text.secondary">
                  {order.items.length} item(s), total:{' '}
                  <strong>
                    $
                    {order.items
                      .reduce((acc, item) => acc + item.priceAtPurchase * item.quantity, 0)
                      .toFixed(2)}
                  </strong>
                </Typography>
              </CardContent>
            </Card>
          ))
        )}
      </Stack>

      {totalPages > 1 && (
        <Pagination
          pageNumber={currentPage}
          totalPages={totalPages}
          handlePageChange={(newPage) => setCurrentPage(newPage)}
        />
      )}
    </Box>
  );
};

export default AdminOrderManager;
