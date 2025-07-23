import { useEffect, useState, forwardRef } from 'react';
import { Box, Typography, Grid, Divider } from '@mui/material';
import { ProductDto } from '../models/Product';
import ProductService from '../services/ProductService';
import { toast } from 'material-react-toastify';
import { useNavigate } from 'react-router-dom';
import FeaturedCard from '../components/products/FeaturedCard';
import UnderlinedButton from '../components/shared/UnderlinedButton';
import CategoryService from '../services/CategoryService';

const FeaturedProducts = forwardRef<HTMLElement, {}>((props, ref) => {
  const [featuredProducts, setFeaturedProducts] = useState<ProductDto[]>([]);
  const [pageNumber] = useState(1);
  const [pageSize] = useState(20);

  const navigate = useNavigate();

  const onProductClick = (productId: string) => {
    navigate(`products/${productId}`);
  };

  useEffect(() => {
    fetchFeaturedProducts();
  }, [pageNumber, pageSize]);

  const fetchFeaturedProducts = async () => {
    try {
      const category = await CategoryService.getCategoryByName("FEATURED");
      const response = await ProductService.getAllProducts(
        pageNumber,
        pageSize,
        { isArchived: false, categoryIds: [category.categoryId] }
      );
      setFeaturedProducts(response.products);
    } catch (error) {
      toast.error("Failed to fetch featured products");
      throw new Error("Failed to fetch featured products");
    }
  };

  return (
    <Box ref={ref} sx={{ py: { xs: 6, md: 8 }, px: { xs: 2, md: 4 } }}>
      {/* Section header */}
      <Box
        display="flex"
        justifyContent="space-between"
        alignItems="flex-end"
        flexWrap="wrap"
        mb={4}
      >
        <Box sx={{ flex: '1 1 auto', minWidth: '250px', mr: 2 }}>
          <Typography variant="h5" fontWeight={600}>
            FEATURED ITEMS
          </Typography>
          <Typography
            variant="subtitle2"
            sx={{
              color: 'text.secondary',
              fontWeight: 300,
              fontSize: '0.95rem',
              mt: 0.5,
            }}
          >
            Handpicked selections just for you - explore our exclusive collection of trending products.
          </Typography>
          <Divider sx={{ mt: 2 }} />
        </Box>

        <UnderlinedButton
          variant="text"
          color="primary"
          onClick={() => navigate(`/c?c=${encodeURIComponent("FEATURED")}`)}
          sx={{
            mt: { xs: 3, md: 0 }
          }}
        >
          VIEW ALL
        </UnderlinedButton>
      </Box>

      {/* Products Grid */}
      <Grid container spacing={{ xs: 2, sm: 3, md: 4 }}>
        {featuredProducts.map((product) => (
          <Grid
            item
            key={product.productId}
            xs={12}    // Full width on extra small screens
            sm={6}     // 2 per row on small screens
            md={4}     // 3 per row on medium screens
            lg={3}     // 4 per row on large screens
          >
            <FeaturedCard
              name={product.name}
              imageUrl={
                product.variants
                  .flatMap(v => v.images || [])
                  .find(img => img.isDefault)?.imageUrl ||
                product.variants
                  .flatMap(v => v.images || [])[0]?.imageUrl
              }
              onImageClick={() => onProductClick(product.productId)}
            />
          </Grid>
        ))}
      </Grid>
    </Box>
  );
});

export default FeaturedProducts;
