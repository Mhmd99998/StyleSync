import React, { useState } from 'react';
import {
  Box,
  Typography,
  TextField,
  Button,
  CircularProgress,
  Grid,
  Divider,
  Paper,
} from '@mui/material';
import { loadStripe } from '@stripe/stripe-js';
import {
  Elements,
  CardNumberElement,
  CardExpiryElement,
  CardCvcElement,
  useStripe,
  useElements,
} from '@stripe/react-stripe-js';
import { useSelector, useDispatch } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { toast } from 'material-react-toastify';
import { RootState } from '../redux/store';
import PaymentService from '../services/PaymentService';
import OrderService from '../services/OrderService';
import EmailService from '../services/EmailService';
import CartService from '../services/CartService';
import { clearCart } from '../redux/slices/cartSlice';
import VariantService from '../services/VariantService';
import Navbar from '../components/shared/Navbar';

const stripePromise = loadStripe('pk_test_51RArt3GalAtnvnKaEyPaQPWGQe7W5B6qF2DhpYtUUf8wj3hFPHBXxuEkZYClIlH1qL0PAMPXAk9Ap9755oOf68Cf00XwVFUnTg');

const CheckoutForm: React.FC = () => {
  const stripe = useStripe();
  const elements = useElements();
  const dispatch = useDispatch();
  const navigate = useNavigate();

  const userId = useSelector((state: RootState) => state.user.userId);
  const userEmail = useSelector((state: RootState) => state.user.email);
  const cartItems = useSelector((state: RootState) => state.cart.items);

  const [address, setAddress] = useState('');
  const [cardHolderName, setCardHolderName] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const totalPrice = cartItems.reduce((sum, item) => sum + item.price * item.quantity, 0);
  const totalAmount = Math.round(totalPrice * 100);

  const handlePayment = async () => {
    if (!userId || !userEmail) {
      toast.error("You must be logged in to use this feature!");
      navigate(-1);
      return;
    }

    if (!stripe || !elements) return;

    setError(null);

    const cardNumber = elements.getElement(CardNumberElement);
    const expiry = elements.getElement(CardExpiryElement);
    const cvc = elements.getElement(CardCvcElement);

    if (!cardNumber || !expiry || !cvc) {
      setError("One or more card elements are not initialized properly.");
      return;
    }

    if (!cardHolderName.trim()) {
      setError("Cardholder name is required.");
      return;
    }

    setLoading(true);

    try {
      const { clientSecret } = await PaymentService.createPaymentIntent(totalAmount);

      const result = await stripe.confirmCardPayment(clientSecret, {
        payment_method: {
          card: cardNumber,
          billing_details: {
            name: cardHolderName,
          },
        },
      });

      if (result.error) {
        toast.error(result.error.message || 'Payment failed');
      } else if (result.paymentIntent?.status === 'succeeded') {
        const paymentIntentId = result.paymentIntent.id;

        const order = await OrderService.createOrder({
          userId: userId,
          paymentIntentId: paymentIntentId,
          shippingAddress: address,
          status: "Pending",
        });

        for (const item of cartItems) {
          const variant = await VariantService.getVariantById(item.variantId);

          await OrderService.addItemToOrder(order.orderId, {
            variantId: item.variantId,
            quantity: item.quantity,
            priceAtPurchase: variant.onSale > 0 ? variant.onSale : variant.price,
          });
        }

        await EmailService.sendOrderConfirmation({
          email: userEmail,
          orderId: order.orderId,
          orderDate: new Date().toISOString(),
        });

        await CartService.clearCart(userId);
        dispatch(clearCart());

        toast.success('Payment successful!');
        navigate('/orders');
      }
    } catch (error) {
      toast.error("Failed to process payment");
      console.error("Payment error:", error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <>
    <Navbar />
      <Box width="100%" maxWidth="lg" mx="auto" mt={4} px={2}>
        <Typography variant="h4" gutterBottom>
          Checkout
        </Typography>
        <Typography variant="subtitle1" gutterBottom>
          Please enter your payment details to complete the purchase.
        </Typography>
        <Paper elevation={4} sx={{ p: 5, mt: 3, maxWidth: 1200, mx: 'auto' }}>
          <Grid container spacing={4}>
            <Grid item xs={12}>
              <TextField
                fullWidth
                label="Cardholder's Name"
                value={cardHolderName}
                onChange={(e) => setCardHolderName(e.target.value)}
                error={!!error}
                helperText={error}
              />
            </Grid>

            <Grid item xs={12}>
              <TextField
                fullWidth
                label="Shipping Address"
                value={address}
                onChange={(e) => setAddress(e.target.value)}
                error={!address && !!error}
                helperText={!address && !!error ? "Shipping address is required." : ''}
              />
            </Grid>

            <Grid item xs={12}>
              <Typography variant="body2" sx={{ mb: 1 }}>
                Card Number
              </Typography>
              <Box sx={{ border: '1px solid #ccc', borderRadius: 1, p: 1.5 }}>
                <CardNumberElement />
              </Box>
            </Grid>

            <Grid item xs={6}>
              <Typography variant="body2" sx={{ mb: 1 }}>
                Expiry
              </Typography>
              <Box sx={{ border: '1px solid #ccc', borderRadius: 1, p: 1.5 }}>
                <CardExpiryElement />
              </Box>
            </Grid>

            <Grid item xs={6}>
              <Typography variant="body2" sx={{ mb: 1 }}>
                CVC
              </Typography>
              <Box sx={{ border: '1px solid #ccc', borderRadius: 1, p: 1.5 }}>
                <CardCvcElement />
              </Box>
            </Grid>

            <Grid item xs={12}>
              <Divider sx={{ my: 3 }} />
              <Box display="flex" justifyContent="space-between" alignItems="center">
                <Typography variant="h6">
                  Total: <strong>${totalPrice.toFixed(2)}</strong>
                </Typography>
                <Button
                  variant="contained"
                  color="primary"
                  onClick={handlePayment}
                  disabled={loading}
                >
                  {loading ? <CircularProgress size={24} /> : 'Pay Now'}
                </Button>
              </Box>
            </Grid>
          </Grid>
        </Paper>

        <Box mt={4} textAlign="center">
          <Typography variant="body2" color="textSecondary">
            Powered by Stripe<sup>®</sup>
          </Typography>
        </Box>
      </Box>
    </>
  );
};

const CheckoutPage: React.FC = () => {
  return (
    <Elements stripe={stripePromise}>
      <CheckoutForm />
    </Elements>
  );
};

export default CheckoutPage;
