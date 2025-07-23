import { Route } from "react-router-dom";
import AdminDashboardPage from "../pages/admin/AdminDashboardPage";
import AdminRoute from "../guards/AdminRoute";
import EditProduct from "../components/products/EditProduct";
import UserGrid from "../components/users/UserGrid";
import EditUser from "../components/users/EditUser";
import ColorPaletteManager from "../components/admin/ColorPaletteManager";
import ErrorPage from "../pages/error/ErrorPage";
import CategoryManager from "../components/admin/CategoryManager";
import BulkProductUpload from "../components/admin/BulkProductUpload";
import AdminOrderManager from "../components/admin/AdminOrderManager";
import AdminOrderDetails from "../components/admin/AdminOrderDetails";
import AdminDashboardHome from "../components/admin/AdminDashboardHome";
import Inventory from "../components/admin/Inventory";
import Analytics from "../components/admin/Analytics";
import ProductsGrid from "../components/products/ProductsGrid";
import ProductAnalytics from "../components/admin/ProductAnalytics";

const AdminRoutes = () => (
  <Route element={<AdminRoute />}>
    <Route path="/admin" element={<AdminDashboardPage />}>
      <Route index element={<AdminDashboardHome />} />
      <Route path="products" element={<ProductsGrid />} />
      <Route path="products/edit/:productId" element={<EditProduct />} />
      <Route path="users" element={<UserGrid />} />
      <Route path="users/edit/:userId" element={<EditUser />} />
      <Route path="palette-manager" element={<ColorPaletteManager />} />
      <Route path="order-manager" element={<AdminOrderManager />} />
      <Route path="orders/:orderId" element={<AdminOrderDetails />} />
      <Route path="bulk-upload" element={<BulkProductUpload />} />
      <Route path="category-manager" element={<CategoryManager />} />
      <Route path="inventory" element={<Inventory />} />
      <Route path="analytics" element={<Analytics />} />
      <Route path="product-analytics" element={<ProductAnalytics />} />
      <Route path="*" element={<ErrorPage errorCode={404} />} />
    </Route>
  </Route>
);

export default AdminRoutes;
