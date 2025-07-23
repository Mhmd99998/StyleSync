import { Grid, Paper, Typography, Box, useTheme } from '@mui/material';
import { useNavigate } from 'react-router-dom';
import GroupIcon from '@mui/icons-material/Group';
import CategoryIcon from '@mui/icons-material/Category';
import PaletteIcon from '@mui/icons-material/Palette';
import UploadFileIcon from '@mui/icons-material/UploadFile';
import ReceiptLongIcon from '@mui/icons-material/ReceiptLong';
import { BarChart, Inventory, StorefrontOutlined } from '@mui/icons-material';

const items = [
  { label: 'Manage Products', icon: <StorefrontOutlined sx={{ fontSize: 40 }} />, path: 'products' },
  { label: 'Manage Orders', icon: <ReceiptLongIcon sx={{ fontSize: 40 }} />, path: 'order-manager' },
  { label: 'Manage Users', icon: <GroupIcon sx={{ fontSize: 40 }} />, path: 'users' },
  { label: 'Bulk Product Upload', icon: <UploadFileIcon sx={{ fontSize: 40 }} />, path: 'bulk-upload' },
  { label: 'Inventory', icon: <Inventory sx={{ fontSize: 40 }} />, path: 'inventory' },
  { label: 'Analytics', icon: <BarChart sx={{ fontSize: 40 }} />, path: 'analytics' },
  { label: 'Product Analytics', icon: <BarChart sx={{ fontSize: 40 }} />, path: 'product-analytics' },
  { label: 'Categories', icon: <CategoryIcon sx={{ fontSize: 40 }} />, path: 'category-manager' },
  { label: 'Color Palette', icon: <PaletteIcon sx={{ fontSize: 40 }} />, path: 'palette-manager' },
];

const AdminDashboardHome: React.FC = () => {
  const navigate = useNavigate();
  const theme = useTheme();

  return (
    <Box sx={{ mt: 10, px: 2, maxWidth: 1400, mx: 'auto' }}>
      <Typography variant="h5" sx={{ mb: 3, fontWeight: 500 }}>
        Welcome to the Admin Dashboard
      </Typography>
      <Grid container spacing={3}>
        {items.map((item, index) => (
          <Grid item xs={12} sm={6} md={4} key={index}>
            <Paper
              elevation={3}
              onClick={() => navigate(`/admin/${item.path}`)}
              sx={{
                display: 'flex',
                flexDirection: 'column',
                alignItems: 'center',
                justifyContent: 'center',
                gap: 1,
                p: 4,
                height: 150,
                cursor: 'pointer',
                borderRadius: 1,
                transition: 'all 0.2s ease-in-out',
                textAlign: 'center',
                '&:hover': {
                  backgroundColor: theme.palette.action.hover,
                  transform: 'scale(1.02)',
                },
              }}
            >
              <Box color="primary.main">{item.icon}</Box>
              <Box
                sx={{
                  position: 'relative',
                  display: 'inline-block',
                  '&::after': {
                    content: '""',
                    position: 'absolute',
                    bottom: -4,
                    left: '5%',
                    width: '0%',
                    height: 2,
                    backgroundColor: theme.palette.secondary.main,
                    transition: 'width 0.3s ease-in-out',
                  },
                  '&:hover::after': {
                    width: '90%',
                  },
                }}
              >
                <Typography
                  variant="subtitle1"
                  sx={{
                    textTransform: 'uppercase',
                    fontSize: '1.1rem',
                  }}
                >
                  {item.label}
                </Typography>
              </Box>
            </Paper>
          </Grid>
        ))}
      </Grid>
    </Box>
  );
};

export default AdminDashboardHome;
