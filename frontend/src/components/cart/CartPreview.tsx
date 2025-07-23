import React, { useEffect, useState } from 'react';
import {
  Box,
  Typography,
  Paper,
  Button,
  Pagination,
  CircularProgress,
  IconButton,
  Grid,
} from '@mui/material';
import { useSelector, useDispatch } from 'react-redux';
import { RootState } from '../../redux/store';
import { CartItemDto } from '../../models/Cart';
import CartService from '../../services/CartService';
import ProductService from '../../services/ProductService';
import VariantPreviewModal from './VariantPreviewModal';
import { toast } from 'material-react-toastify';
import DeleteIcon from '@mui/icons-material/Delete';
import ConfirmationPopup from '../shared/ConfirmationPopup';
import { resetCart, setCartItems } from '../../redux/slices/cartSlice';
import { useNavigate } from 'react-router-dom';
import UnderlinedButton from '../shared/UnderlinedButton';
import { ProductDto } from '../../models/Product';

const ITEMS_PER_PAGE = 5;

const getDefaultImageUrl = (product: ProductDto): string | undefined => {
  for (const variant of product.variants) {
    if (variant.images?.length) {
      const defaultImg = variant.images.find(img => img.isDefault);
      return defaultImg ? defaultImg.imageUrl : variant.images[0].imageUrl;
    }
  }
  return undefined;
};

const CartPreview: React.FC = () => {
  const userId = useSelector((state: RootState) => state.user.userId);
  const cart = useSelector((state: RootState) => state.cart);
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(1);
  const [selectedVariantId, setSelectedVariantId] = useState<string | null>(null);
  const [previewOpen, setPreviewOpen] = useState(false);
  const [confirmDialogOpen, setConfirmDialogOpen] = useState(false);
  const [itemToRemove, setItemToRemove] = useState<CartItemDto | null>(null);
  const [variantDetailsMap, setVariantDetailsMap] = useState<Record<string, ProductDto>>({});

  useEffect(() => {
    if (!userId) return;

    const fetchCart = async () => {
      try {
        const data = await CartService.getCartForUser(userId);
        dispatch(setCartItems(data.items));

        // Get unique variant IDs
        const variantIds = [...new Set(data.items.map(item => item.variantId))];

        // Fetch all variant details with parent product info
        const promises = variantIds.map(id =>
          ProductService.getProductByVariantId(id)
        );

        const products = await Promise.all(promises);

        const map: Record<string, ProductDto> = {};
        products.forEach(product => {
          product.variants.forEach(variant => {
            map[variant.variantId] = product;
          });
        });

        setVariantDetailsMap(map);
      } catch (error) {
        console.error('Failed to fetch cart or product data:', error);
      } finally {
        setLoading(false);
      }
    };

    if (!cart.isCheckoutComplete) {
      fetchCart();
    }

    return () => {
      if (cart.isCheckoutComplete) {
        dispatch(resetCart());
      }
    };
  }, [userId, cart.isCheckoutComplete, dispatch]);

  const handlePreview = (variantId: string) => {
    setSelectedVariantId(variantId);
    setPreviewOpen(true);
  };

  const handlePageChange = (_: React.ChangeEvent<unknown>, value: number) => {
    setPage(value);
  };

  const handleRemoveClick = (item: CartItemDto) => {
    setItemToRemove(item);
    setConfirmDialogOpen(true);
  };

  const handleRemoveConfirm = async () => {
    if (!userId) {
      toast.error("You must be logged in to use this feature!");
      return;
    }

    if (itemToRemove) {
      try {
        await CartService.removeCartItem(userId, itemToRemove.cartItemId);
        dispatch(setCartItems(cart.items.filter(item => item.cartItemId !== itemToRemove.cartItemId)));
        toast.success("Item removed from cart!");
      } catch (error) {
        toast.error("Failed to remove item from cart.");
      } finally {
        setConfirmDialogOpen(false);
        setItemToRemove(null);
      }
    }
  };

  const paginatedItems = cart.items.slice(
    (page - 1) * ITEMS_PER_PAGE,
    page * ITEMS_PER_PAGE
  ) || [];

  const totalPrice = cart.items.reduce((sum: number, item) => sum + item.price * item.quantity, 0);

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" height="60vh">
        <CircularProgress />
      </Box>
    );
  }

  if (cart.isCheckoutComplete) {
    return (
      <Box textAlign="center" mt={5} mb={5}>
        <Typography variant="h5">Checkout successful! Your order is being processed.</Typography>
        <Button variant="contained" color="primary" onClick={() => navigate('/orders')}>
          View Order Details
        </Button>
      </Box>
    );
  }

  if (!cart.items.length) {
    return (
      <Box display="flex" flexDirection="column" alignItems="center" justifyContent="center" mt={8} px={2}>
        <Typography variant="h5" gutterBottom>
          Your cart is empty 🛒
        </Typography>
        <Typography variant="body1" color="text.secondary" align="center" maxWidth={400} mb={3}>
          Looks like you haven’t added anything to your cart yet. When you do, it will appear here.
        </Typography>
        <Button
          variant="contained"
          color="primary"
          size="large"
          onClick={() => navigate('/')}
          sx={{ borderRadius: 3, textTransform: 'none', px: 4 }}
        >
          Browse Our Collection
        </Button>
      </Box>
    );
  }

  return (
    <Box sx={{ maxWidth: '1000px', margin: 'auto', mt: 4, px: 2 }}>
      <Typography variant="h4" gutterBottom>
        Your Shopping Cart
      </Typography>

      <Grid container spacing={2}>
        {paginatedItems.map(item => {
          const product = variantDetailsMap[item.variantId];
          const variant = product?.variants.find(v => v.variantId === item.variantId);
          const imageUrl = product ? getDefaultImageUrl(product) : undefined;

          return (
            <Grid item xs={12} key={item.cartItemId}>
              <Paper sx={{ display: 'flex', p: 2, alignItems: 'center' }}>
                <Box
                  component="img"
                  src={imageUrl}
                  alt={variant?.sku || 'product image'}
                  sx={{
                    width: 100,
                    height: 100,
                    objectFit: 'contain',
                    borderRadius: 2,
                    mr: 2,
                    backgroundColor: '#f8f8f8'
                  }}
                />
                <Box flex={1} onClick={() => handlePreview(item.variantId)} sx={{ cursor: 'pointer' }}>
                  <Typography variant="h6">{product?.name || item.variantName}</Typography>
                  <Typography variant="body2" color="text.secondary">
                    Size: {variant?.size} | Color: {variant?.color}
                  </Typography>
                </Box>
                <Box textAlign="right">
                  <Typography variant="subtitle1">${item.price.toFixed(2)}</Typography>
                  <Typography variant="body2">Qty: {item.quantity}</Typography>
                  <Typography variant="body2">
                    Total: ${(item.price * item.quantity).toFixed(2)}
                  </Typography>
                </Box>
                <IconButton color="error" onClick={() => handleRemoveClick(item)} sx={{ ml: 2 }}>
                  <DeleteIcon />
                </IconButton>
              </Paper>
            </Grid>
          );
        })}
      </Grid>

      {cart.items.length > ITEMS_PER_PAGE && (
        <Box display="flex" justifyContent="center" mt={3}>
          <Pagination
            count={Math.ceil(cart.items.length / ITEMS_PER_PAGE)}
            page={page}
            onChange={handlePageChange}
            color="primary"
          />
        </Box>
      )}

      <Box display="flex" justifyContent="space-between" alignItems="center" mt={4}>
        <Typography variant="h6">
          Total: <strong>${totalPrice.toFixed(2)}</strong>
        </Typography>
        <UnderlinedButton
          color="primary"
          variant="contained"
          size="large"
          onClick={() => navigate("/checkout")}
        >
          CHECKOUT
        </UnderlinedButton>
      </Box>

      <VariantPreviewModal
        open={previewOpen}
        onClose={() => setPreviewOpen(false)}
        variantId={selectedVariantId}
      />

      <ConfirmationPopup
        open={confirmDialogOpen}
        onClose={() => setConfirmDialogOpen(false)}
        onConfirm={handleRemoveConfirm}
        title="Remove Item"
        message="Are you sure you want to remove this item from your cart?"
        confirmButtonText="Remove"
        confirmColor="error"
        cancelButtonText="Cancel"
      />
    </Box>
  );
};

export default CartPreview;
