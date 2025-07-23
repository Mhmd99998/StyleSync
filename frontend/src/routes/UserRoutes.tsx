import { Route } from "react-router-dom";
import HomePage from "../pages/HomePage";
import { ProductDetailsPage } from "../pages/ProductDetailsPage";
import WishlistPage from "../pages/user/WishlistPage";
import CartProcessingPage from "../pages/CartProcessingPage";
import OrderListPage from "../pages/orders/OrderListPage";
import OrderDetailsPage from "../pages/orders/OrderDetailsPage";
import AuthPage from "../pages/auth/AuthPage";
import CustomerRoute from "../guards/CustomerRoute";
import ErrorPage from "../pages/error/ErrorPage";
import RecommendedPage from "../pages/RecommendedPage";
import SearchResultPage from "../pages/SearchResultPage";
import CheckoutPage from "../pages/CheckoutPage";
import BestSellersPage from "../pages/BestSellersPage";
import ProductCatalog from "../components/products/ProductCatalog";
import UserProfile from "../components/users/UserProfile";

const UserRoutes = () => (
  <>
    <Route index element={<HomePage />} />
    <Route path="/c" element={<ProductCatalog />} />
    <Route path="auth" element={<AuthPage />} />
    <Route path="products/:productId" element={<ProductDetailsPage />} />
    <Route path="search" element={<SearchResultPage />} />
    <Route path="best-sellers" element={<BestSellersPage />} />

    <Route element={<CustomerRoute />}>
      <Route path="profile" element={<UserProfile />} />
      <Route path="rec" element={<RecommendedPage />} />
      <Route path="checkout" element={<CheckoutPage />} />
      <Route path="cart" element={<CartProcessingPage />} />
      <Route path="wishlist" element={<WishlistPage />} />
      <Route path="orders" element={<OrderListPage />} />
      <Route path="orders/:orderId" element={<OrderDetailsPage />} />
    </Route>

    <Route path="*" element={<ErrorPage errorCode={404} />} />
  </>
);

export default UserRoutes;
