import { Box } from "@mui/material";
import AdminProductFilterSidebar from "../../components/products/AdminProductFilterSidebar";
import ProductsGrid from "../../components/products/ProductsGrid";
import { useState } from "react";
import { ProductFilterDto } from "../../models/Product";

const AdminProductListPage: React.FC = () => {
  const [filters, setFilters] = useState<ProductFilterDto>({});

  return (
    <></>
  );
};

export default AdminProductListPage;
