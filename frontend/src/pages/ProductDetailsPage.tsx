import { Box } from "@mui/material";
import Navbar from "../components/shared/Navbar";
import ProductDetails from "../components/products/ProductDetails";
import RecommendationLayout from "../components/products/RecommendationLayout";

export const ProductDetailsPage: React.FC = () => {

  return (
    <Box
      sx={{
        display: 'flex',
        flexDirection: 'column',
        minHeight: '100vh',
      }}
    >
      <Navbar />
      <ProductDetails />
      <RecommendationLayout />
    </Box>
  );
}
