import React, { useState } from 'react';
import {
  AppBar,
  Toolbar,
  Typography,
  IconButton,
  Box,
  Menu,
  MenuItem,
  Tooltip,
  Collapse,
  useMediaQuery,
  useTheme,
} from '@mui/material';
import { useSelector, useDispatch } from 'react-redux';
import { RootState, AppDispatch } from '../../redux/store';
import { toggleTheme } from '../../redux/slices/themeSlice';
import { useNavigate } from 'react-router-dom';

import AccountCircleOutlinedIcon from '@mui/icons-material/AccountCircleOutlined';
import SearchOutlinedIcon from '@mui/icons-material/SearchOutlined';
import ShoppingBagOutlinedIcon from '@mui/icons-material/ShoppingBagOutlined';
import AdminPanelSettingsOutlinedIcon from '@mui/icons-material/AdminPanelSettingsOutlined';
import LightModeIcon from '@mui/icons-material/LightMode';
import DarkModeIcon from '@mui/icons-material/DarkMode';
import MenuIcon from '@mui/icons-material/Menu';
import { logout } from '../../redux/slices/userSlice';
import UnderlinedButton from './UnderlinedButton';
import SearchBar from './SearchBar';

const Navbar: React.FC = () => {
  const navigate = useNavigate();
  const dispatch = useDispatch<AppDispatch>();
  const theme = useTheme();
  const isSmallScreen = useMediaQuery(theme.breakpoints.down('md'));

  const isDarkMode = useSelector((state: RootState) => state.theme.isDarkMode);
  const isLoggedIn = useSelector((state: RootState) => state.user.isAuthenticated);
  const role = useSelector((state: RootState) => state.user.role);

  const [anchorEl, setAnchorEl] = useState<null | HTMLElement>(null);
  const [mobileMenuAnchorEl, setMobileMenuAnchorEl] = useState<null | HTMLElement>(null);
  const [cartMenuAnchorEl, setCartMenuAnchorEl] = useState<null | HTMLElement>(null);
  const [isSearchOpen, setIsSearchOpen] = useState(false);

  const handleSearchToggle = () => setIsSearchOpen(prev => !prev);
  const handleProfileClick = (event: React.MouseEvent<HTMLElement>) => setAnchorEl(event.currentTarget);
  const handleProfileClose = () => setAnchorEl(null);
  const handleLogout = () => {
    dispatch(logout());
    handleProfileClose();
    navigate('/');
  };
  const handleMobileMenuClick = (event: React.MouseEvent<HTMLElement>) => setMobileMenuAnchorEl(event.currentTarget);
  const handleMobileMenuClose = () => setMobileMenuAnchorEl(null);
  const handleCartMenuClick = (event: React.MouseEvent<HTMLElement>) => setCartMenuAnchorEl(event.currentTarget);
  const handleCartMenuClose = () => setCartMenuAnchorEl(null);

  const menuItemProps = (onClick: () => void) => ({
    onClick,
    sx: menuItemStyle,
  });

  const navLinks = [
    { label: 'RECOMMENDED', path: '/rec' },
    { label: 'BEST SELLERS', path: '/best-sellers' },
    { label: 'NEW ARRIVALS', path: '/c?c=NEW%20ARRIVALS' },
    { label: 'MEN', path: '/c?c=MEN' },
    { label: 'WOMEN', path: '/c?c=WOMEN' },
  ];

  return (
    <AppBar
      position="static"
      sx={{
        backgroundColor: 'background.paper',
        color: 'text.primary',
        px: 2,
        boxShadow: 2,
        zIndex: theme.zIndex.drawer + 1,
      }}
    >
      <Toolbar sx={{ display: 'flex', justifyContent: 'space-between', gap: 2 }}>
        {/* Logo */}
        <Typography
          variant="h5"
          onClick={() => navigate('/')}
          fontFamily={"'PlayFair Display', serif"}
          sx={{
            cursor: 'pointer',
            userSelect: 'none',
            transition: 'color 0.3s',
            '&:hover': { color: 'secondary.main' },
          }}
        >
          STYLESYNC
        </Typography>

        {/* Navigation links */}
        {!isSmallScreen && (
          <Box sx={{ display: 'flex', gap: 3, alignItems: 'center', flexGrow: 1, justifyContent: 'center' }}>
            {navLinks.map(({ label, path }) => (
              <UnderlinedButton key={label} color="inherit" onClick={() => navigate(path)}>
                {label}
              </UnderlinedButton>
            ))}
          </Box>
        )}

        {/* Icons and menu */}
        <Box sx={{ display: 'flex', alignItems: 'center', gap: 1 }}>
          {isLoggedIn && role === 'admin' && (
            <Tooltip title="Switch to Admin Dashboard" arrow>
              <IconButton onClick={() => navigate('/admin')} sx={iconButtonStyle}>
                <AdminPanelSettingsOutlinedIcon sx={{ fontSize: 24 }} />
              </IconButton>
            </Tooltip>
          )}

          <IconButton onClick={handleProfileClick} sx={iconButtonStyle}>
            <AccountCircleOutlinedIcon sx={{ fontSize: 24 }} />
          </IconButton>

          <IconButton onClick={handleSearchToggle} sx={iconButtonStyle}>
            <SearchOutlinedIcon sx={{ fontSize: 24 }} />
          </IconButton>

          <IconButton onClick={handleCartMenuClick} sx={iconButtonStyle}>
            <ShoppingBagOutlinedIcon sx={{ fontSize: 24 }} />
          </IconButton>

          <IconButton onClick={() => dispatch(toggleTheme())} sx={iconButtonStyle}>
            {isDarkMode ? <DarkModeIcon sx={{ fontSize: 22 }} /> : <LightModeIcon sx={{ fontSize: 22 }} />}
          </IconButton>

          {isSmallScreen && (
            <IconButton onClick={handleMobileMenuClick} sx={iconButtonStyle}>
              <MenuIcon sx={{ fontSize: 26 }} />
            </IconButton>
          )}
        </Box>
      </Toolbar>

      {/* Mobile Navigation Menu */}
      <Menu
        anchorEl={mobileMenuAnchorEl}
        open={Boolean(mobileMenuAnchorEl)}
        onClose={handleMobileMenuClose}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'left' }}
        transformOrigin={{ vertical: 'top', horizontal: 'left' }}
        PaperProps={{ sx: { width: 200, py: 1, backgroundColor: 'background.paper' } }}
      >
        {navLinks.map(({ label, path }) => (
          <MenuItem key={label} {...menuItemProps(() => { navigate(path); handleMobileMenuClose(); })}>
            {label}
          </MenuItem>
        ))}
      </Menu>

      {/* Search Bar */}
      <Collapse in={isSearchOpen} timeout="auto" unmountOnExit>
        <Box sx={{ display: 'flex', justifyContent: 'center', mt: 2, mb: 1 }}>
          <SearchBar onClose={() => setIsSearchOpen(false)} />
        </Box>
      </Collapse>

      {/* Profile Menu */}
      <Menu
        anchorEl={anchorEl}
        open={Boolean(anchorEl)}
        onClose={handleProfileClose}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
        transformOrigin={{ vertical: 'top', horizontal: 'right' }}
        PaperProps={{ sx: { width: 150 } }}
      >
        {isLoggedIn
          ? [
              <MenuItem key="profile" {...menuItemProps(() => { navigate('/profile'); handleProfileClose(); })}>
                Profile
              </MenuItem>,
              <MenuItem key="logout" {...menuItemProps(handleLogout)}>
                Logout
              </MenuItem>,
            ]
          : [
              <MenuItem key="login" {...menuItemProps(() => { navigate('/auth'); handleProfileClose(); })}>
                Login / Register
              </MenuItem>,
            ]}
      </Menu>

      {/* Cart Menu */}
      <Menu
        anchorEl={cartMenuAnchorEl}
        open={Boolean(cartMenuAnchorEl)}
        onClose={handleCartMenuClose}
        anchorOrigin={{ vertical: 'bottom', horizontal: 'right' }}
        transformOrigin={{ vertical: 'top', horizontal: 'right' }}
        PaperProps={{ sx: { width: 150 } }}
      >
        <MenuItem {...menuItemProps(() => { navigate('/cart'); handleCartMenuClose(); })}>My Cart</MenuItem>
        <MenuItem {...menuItemProps(() => { navigate('/orders'); handleCartMenuClose(); })}>My Orders</MenuItem>
      </Menu>
    </AppBar>
  );
};

const menuItemStyle = {
  justifyContent: 'center',
  textAlign: 'center',
  py: 1,
  fontWeight: 500,
  position: 'relative',
  overflow: 'hidden',
  '&:hover': {
    backgroundColor: 'transparent',
    color: 'primary.main',
  },
  '&::after': {
    content: '""',
    position: 'absolute',
    bottom: 4,
    left: '50%',
    width: '80%',
    height: '1px',
    backgroundColor: 'primary.main',
    transform: 'translateX(-50%) scaleX(0)',
    transformOrigin: 'center',
    transition: 'transform 0.3s ease-in-out',
  },
  '&:hover::after': {
    transform: 'translateX(-50%) scaleX(1)',
  },
};

const iconButtonStyle = {
  p: 1,
  color: 'primary.main',
  transition: 'all 0.3s ease-in-out',
  '&:hover': {
    backgroundColor: 'transparent',
    color: 'secondary.main',
  },
};

export default Navbar;
