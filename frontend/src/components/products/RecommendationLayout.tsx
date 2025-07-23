import React, { useEffect, useState } from "react";
import { Box, Typography, CircularProgress } from "@mui/material";
import { ProductDto } from "../../models/Product";
import { useNavigate, useParams } from "react-router-dom";
import RecommendationService from "../../services/RecommendationService";
import RecommendedCard, { DisplayPrice } from "../shared/RecommendedCard";

const RecommendationLayout: React.FC = () => {
  const { productId } = useParams<{ productId: string }>();
  const [recommended, setRecommended] = useState<ProductDto[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const navigate = useNavigate();

  useEffect(() => {
    const fetchRecommendations = async () => {
      if (!productId) return;

      try {
        const products = await RecommendationService.recommendBase(productId, 8);
        setRecommended(products);
      } catch (error) {
        console.error("Failed to load base recommendations:", error);
      } finally {
        setLoading(false);
      }
    };

    fetchRecommendations();
  }, [productId]);

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" my={4}>
        <CircularProgress />
      </Box>
    );
  }

  if (recommended.length === 0) {
    return null;
  }

  return (
    <Box mt={5} mb={8} px={3}>
      <Typography variant="h6" fontWeight={600} mb={3}>
        Similar Products
      </Typography>
      <Box
        display="grid"
        gridTemplateColumns={{ xs: "1fr", sm: "repeat(2, 1fr)", md: "repeat(3, 1fr)", lg: "repeat(4, 1fr)" }}
        gap={3}
      >
        {recommended.map((product) => {
          const allVariants = product.variants ?? [];
          const allPrices = allVariants.map(v => v.price);
          const allOriginalPrices = allVariants.map(v => v.price ?? v.price);
          const isAnyOnSale = allVariants.some(v => v.onSale > 0);

          const price: DisplayPrice = {
            lowestSalePrice: Math.min(...allPrices),
            highestOriginalPrice: Math.max(...allOriginalPrices),
            isOnSale: isAnyOnSale,
          };

          return (
            <RecommendedCard
              key={product.productId}
              name={product.name}
              imageUrl={
                allVariants.flatMap(v => v.images ?? [])[0]?.imageUrl
              }
              price={price}
              colors={[...new Set(allVariants.map(v => v.color) ?? [])]}
              onClick={() => {
                navigate(`/products/${product.productId}`);
                setTimeout(() => {
                  window.scrollTo({ top: 0, behavior: 'smooth' });
                }, 100);
              }}
            />
          );
        })}

      </Box>
    </Box>
  );
};

export default RecommendationLayout;
