import * as React from 'react';
import { styled, useTheme } from '@mui/material/styles';
import Box from '@mui/material/Box';
import Drawer from '@mui/material/Drawer';
import CssBaseline from '@mui/material/CssBaseline';
import MuiAppBar, { AppBarProps as MuiAppBarProps } from '@mui/material/AppBar';
import Toolbar from '@mui/material/Toolbar';
import List from '@mui/material/List';
import Typography from '@mui/material/Typography';
import Divider from '@mui/material/Divider';
import IconButton from '@mui/material/IconButton';
import MenuIcon from '@mui/icons-material/Menu';
import ChevronLeftIcon from '@mui/icons-material/ChevronLeft';
import ChevronRightIcon from '@mui/icons-material/ChevronRight';
import ListItem from '@mui/material/ListItem';
import ListItemButton from '@mui/material/ListItemButton';
import ListItemIcon from '@mui/material/ListItemIcon';
import ListItemText from '@mui/material/ListItemText';
import StorefrontIcon from '@mui/icons-material/Storefront';
import PeopleIcon from '@mui/icons-material/People';
import InventoryIcon from '@mui/icons-material/Inventory';
import CategoryIcon from "@mui/icons-material/Category";
import BarChartIcon from '@mui/icons-material/BarChart';
import LogoutIcon from '@mui/icons-material/Logout';
import AdminPanelSettingsOutlinedIcon from '@mui/icons-material/AdminPanelSettingsOutlined';
import LightModeIcon from '@mui/icons-material/LightMode';
import DarkModeIcon from '@mui/icons-material/DarkMode';
import { useSelector, useDispatch } from 'react-redux';
import { RootState, AppDispatch } from '../../redux/store';
import { toggleTheme } from '../../redux/slices/themeSlice';
import { useNavigate } from 'react-router-dom';
import AuthService from '../../services/AuthService';
import { Dashboard, PaletteOutlined, Publish, ReceiptLong } from '@mui/icons-material';

const drawerWidth = 240;

interface AppBarProps extends MuiAppBarProps {
  open?: boolean;
}

const AppBar = styled(MuiAppBar, {
  shouldForwardProp: (prop) => prop !== 'open',
})<AppBarProps>(({ theme, open }) => ({
  transition: theme.transitions.create(['margin', 'width'], {
    easing: theme.transitions.easing.sharp,
    duration: theme.transitions.duration.leavingScreen,
  }),
  ...(open && {
    marginLeft: drawerWidth,
    width: `calc(100% - ${drawerWidth}px)`,
    transition: theme.transitions.create(['margin', 'width'], {
      easing: theme.transitions.easing.easeOut,
      duration: theme.transitions.duration.enteringScreen,
    }),
  }),
}));

const DrawerHeader = styled('div')(({ theme }) => ({
  display: 'flex',
  alignItems: 'center',
  padding: theme.spacing(0, 1),
  ...theme.mixins.toolbar,
  justifyContent: 'flex-end',
}));

export default function AdminNavbar() {
  const theme = useTheme();
  const [open, setOpen] = React.useState(false);
  const dispatch = useDispatch<AppDispatch>();
  const isDarkMode = useSelector((state: RootState) => state.theme.isDarkMode);
  const navigate = useNavigate();

  const handleDrawerOpen = () => {
    setOpen(true);
  };

  const handleDrawerClose = () => {
    setOpen(false);
  };

  const handleNavigation = (text: string) => {
    switch (text) {
      case 'Dashboard':
        navigate("/admin");
        break;
      case 'Products':
        navigate('/admin/products');
        break;
      case 'Users':
        navigate('/admin/users');
        break;
      case 'Inventory':
        navigate('/admin/inventory');
        break;
      case 'Analytics':
        navigate('/admin/analytics');
        break;
      case 'Product Analytics':
        navigate('/admin/product-analytics');
        break;
      case 'Color Palette Manager':
        navigate('/admin/palette-manager');
        break;
      case 'Categories':
        navigate('/admin/category-manager');
        break;
      case 'Order Manager':
        navigate('/admin/order-manager');
        break;
      case 'Bulk Upload':
        navigate('/admin/bulk-upload');
        break;
      case 'Logout':
        handleLogout();
        break;
      default:
        break;
    }
  };

  const handleLogout = () => {
    AuthService.logout();
    navigate('/auth');
  };

  return (
    <Box sx={{ display: 'flex' }}>
      <CssBaseline />
      <AppBar position="fixed" open={open}>
        <Toolbar>
          {/* Toggle button for sidebar */}
          <IconButton
            color="inherit"
            aria-label="open drawer"
            onClick={handleDrawerOpen}
            edge="start"
            sx={{
              mr: 2,
              ...(open && { display: 'none' }),
            }}
          >
            <MenuIcon />
          </IconButton>
          <Box
            onClick={() => navigate("/admin")}
            sx={{
              transition: "color 0.4s ease",
              cursor: "pointer",
              "&:hover": {
                color: "secondary.main",
              },
            }}
          >
            <Typography variant="h6" noWrap component="div" fontFamily={"'PlayFair Display', serif"}>
              STYLESYNC
            </Typography>
          </Box>
          <Box sx={{ flexGrow: 1 }} />
          <IconButton
            sx={{ mx: 0.2 }}
            color="inherit"
            aria-label="switch"
            onClick={() => navigate("/")}
            edge="end"
          >
            <AdminPanelSettingsOutlinedIcon />
          </IconButton>
          {/* Theme toggle button from Redux */}
          <IconButton
            sx={{ mx: 1 }}
            color="inherit"
            aria-label="toggle theme"
            onClick={() => dispatch(toggleTheme())}
          >
            {isDarkMode ? <DarkModeIcon /> : <LightModeIcon />}
          </IconButton>
          <IconButton
            color="inherit"
            aria-label="logout"
            onClick={handleLogout}
            edge="end"
          >
            <LogoutIcon />
          </IconButton>
        </Toolbar>
      </AppBar>
      <Drawer
        sx={{
          width: drawerWidth,
          flexShrink: 0,
          '& .MuiDrawer-paper': {
            width: drawerWidth,
            boxSizing: 'border-box',
          },
        }}
        variant="persistent"
        anchor="left"
        open={open}
      >
        <DrawerHeader>
          <IconButton onClick={handleDrawerClose}>
            {theme.direction === 'ltr' ? <ChevronLeftIcon /> : <ChevronRightIcon />}
          </IconButton>
        </DrawerHeader>
        <Divider />
        <List>
          {[
            { text: 'Dashboard', icon: <Dashboard /> },
            { text: 'Products', icon: <StorefrontIcon /> },
            { text: 'Inventory', icon: <InventoryIcon /> },
            { text: 'Order Manager', icon: <ReceiptLong /> },
            { text: 'Analytics', icon: <BarChartIcon /> },
            { text: 'Product Analytics', icon: <BarChartIcon /> },
            { text: 'Bulk Upload', icon: <Publish /> },
            { text: 'Color Palette Manager', icon: <PaletteOutlined /> },
            { text: 'Categories', icon: <CategoryIcon /> },
            { text: 'Users', icon: <PeopleIcon /> },
            { text: 'Logout', icon: <LogoutIcon /> },
          ].map(({ text, icon }) => (
            <ListItem key={text} disablePadding>
              <ListItemButton onClick={() => {
                handleDrawerClose();
                handleNavigation(text);
              }}>
                <ListItemIcon>{icon}</ListItemIcon>
                <ListItemText primary={text} />
              </ListItemButton>
            </ListItem>
          ))}
        </List>
      </Drawer>
    </Box>
  );
}
