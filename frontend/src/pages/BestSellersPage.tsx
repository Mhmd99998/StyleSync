import React, { useEffect, useState } from 'react';
import {
  Box,
  Typography,
  CircularProgress,
  Grid,
  Card,
  CardContent,
  Tooltip,
  useTheme,
  useMediaQuery,
  Divider,
  Chip,
  IconButton,
} from '@mui/material';
import { styled } from '@mui/material/styles';
import { TopProductDto } from '../models/Analytics';
import { ProductDto } from '../models/Product';
import AnalyticsService from '../services/AnalyticsService';
import ProductService from '../services/ProductService';
import Navbar from '../components/shared/Navbar';
import ArrowForwardIcon from '@mui/icons-material/ArrowForward';
import UnderlinedButton from '../components/shared/UnderlinedButton';
import { useNavigate } from 'react-router-dom';

const StyledCard = styled(Card)(({ theme }) => ({
  borderRadius: theme.spacing(1),
  boxShadow: theme.shadows[2],
  transition: 'transform 0.2s ease, box-shadow 0.2s ease',
  overflow: 'hidden',
  position: 'relative',
  '&:hover': {
    transform: 'translateY(-2px)',
    boxShadow: theme.shadows[5],
  },
  cursor: 'pointer',
  fontFamily: "'Inter', sans-serif",
}));

const SaleTag = styled(Chip)(({ theme }) => ({
  position: 'absolute',
  top: theme.spacing(1),
  left: theme.spacing(1),
  backgroundColor: theme.palette.error.main,
  color: theme.palette.common.white,
  fontWeight: 600,
}));

const RankBadge = styled(Box)(({ theme }) => ({
  position: 'absolute',
  top: theme.spacing(1),
  right: theme.spacing(1),
  backgroundColor: theme.palette.primary.main,
  color: theme.palette.primary.contrastText,
  borderRadius: '50%',
  width: 32,
  height: 32,
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
  fontWeight: 600,
}));

const ImageWrapper = styled(Box)({
  width: '100%',
  position: 'relative',
  paddingTop: '133%', // 4:3 aspect ratio
  backgroundColor: '#f5f5f5',
  overflow: 'hidden',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
});

const BestSellersPage: React.FC = () => {
  const [topProducts, setTopProducts] = useState<{ top: TopProductDto; product: ProductDto }[]>([]);
  const [loading, setLoading] = useState(true);
  const theme = useTheme();
  const navigate = useNavigate();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  useEffect(() => {
    const fetchTopProducts = async () => {
      setLoading(true);
      try {
        const topSellers: TopProductDto[] = await AnalyticsService.getTopSellingProducts('month', 20);
        const products = await Promise.all(
          topSellers.map(async (top) => {
            const product = await ProductService.getProductById(top.productId);
            return { top, product };
          })
        );
        setTopProducts(products);
      } catch (error) {
        console.error('Failed to fetch best sellers:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchTopProducts();
  }, []);

  if (loading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 10 }}>
        <CircularProgress />
      </Box>
    );
  }

  return (
    <Box sx={{ mb: 5 }}>
      <Navbar />
      <Box sx={{ px: { xs: 2, md: 6 }, py: 4 }}>
        <Typography
          variant="h4"
          sx={{ fontWeight: 400, fontFamily: "'Poppins', sans-serif", mb: 2 }}
        >
          BEST SELLERS
        </Typography>

        <Divider sx={{ width: '100%', mb: 2 }} />

        <Grid container spacing={3}>
          {/* Top 3 - emphasized */}
          {topProducts.slice(0, 3).map(({ top, product }, index) => {
            const variant = product.variants[0];
            const onSale = variant.onSale > 0;

            return (
              <Grid item xs={12} sm={6} md={4} key={product.productId}>
                <StyledCard onClick={() => navigate(`/products/${product.productId}`)}>
                  {onSale && <SaleTag label="On Sale" />}
                  <RankBadge>#{index + 1}</RankBadge>
                  <ImageWrapper>
                    <Box
                      component="img"
                      src={variant.images[0]?.imageUrl || 'https://placehold.co/600x850@2x.png'}
                      alt={product.name}
                      loading="lazy"
                      sx={{
                        maxWidth: '100%',
                        maxHeight: '100%',
                        position: 'absolute',
                        top: '50%',
                        left: '50%',
                        transform: 'translate(-50%, -50%)',
                        objectFit: 'contain',
                      }}
                    />
                  </ImageWrapper>
                  <CardContent sx={{ display: 'flex', flexDirection: 'column', gap: 1.5, p: 2 }}>
                    <Tooltip title={product.name} arrow>
                      <Typography variant="h6" noWrap sx={{ fontWeight: 400 }}>
                        {product.name}
                      </Typography>
                    </Tooltip>
                    {onSale ? (
                      <Box sx={{ display: 'flex', gap: 1, alignItems: 'center' }}>
                        <Typography
                          variant="body2"
                          sx={{ textDecoration: 'line-through', color: theme.palette.text.secondary }}
                        >
                          ${(variant.price + variant.onSale).toFixed(2)}
                        </Typography>
                        <Typography variant="body1" sx={{ fontWeight: 600, color: theme.palette.error.main }}>
                          ${variant.price.toFixed(2)}
                        </Typography>
                      </Box>
                    ) : (
                      <Typography variant="body1" sx={{ fontWeight: 600 }}>
                        ${variant.price.toFixed(2)}
                      </Typography>
                    )}
                    <UnderlinedButton
                      variant="contained"
                      size="medium"
                      sx={{ alignSelf: 'center', mt: 1 }}
                      onClick={() => navigate(`/products/${product.productId}`)}
                    >
                      SHOP NOW
                    </UnderlinedButton>
                  </CardContent>
                </StyledCard>
              </Grid>
            );
          })}

          {/* Remaining products - compact grid */}
          {topProducts.slice(3).map(({ top, product }, index) => {
            const variant = product.variants[0];
            const onSale = variant.onSale > 0;

            return (
              <Grid item xs={12} sm={6} md={3} lg={2.4} key={product.productId}>
                <StyledCard onClick={() => navigate(`/products/${product.productId}`)}>
                  {onSale && <SaleTag label="On Sale" />}
                  <RankBadge>#{index + 4}</RankBadge>
                  <ImageWrapper>
                    <Box
                      component="img"
                      src={variant.images[0]?.imageUrl || 'https://placehold.co/600x850@2x.png'}
                      alt={product.name}
                      loading="lazy"
                      sx={{
                        maxWidth: '100%',
                        maxHeight: '100%',
                        position: 'absolute',
                        top: '50%',
                        left: '50%',
                        transform: 'translate(-50%, -50%)',
                        objectFit: 'contain',
                      }}
                    />
                  </ImageWrapper>
                  <CardContent sx={{ display: 'flex', flexDirection: 'column', gap: 1, p: 2 }}>
                    <Tooltip title={product.name} arrow>
                      <Typography variant="subtitle2" noWrap sx={{ fontWeight: 400, fontSize: '1rem' }}>
                        {product.name}
                      </Typography>
                    </Tooltip>
                    {onSale ? (
                      <Box sx={{ display: 'flex', gap: 1, alignItems: 'center' }}>
                        <Typography
                          variant="body2"
                          sx={{ textDecoration: 'line-through', color: theme.palette.text.secondary }}
                        >
                          ${(variant.price + variant.onSale).toFixed(2)}
                        </Typography>
                        <Typography variant="body2" sx={{ fontWeight: 600, color: theme.palette.error.main }}>
                          ${variant.price.toFixed(2)}
                        </Typography>
                      </Box>
                    ) : (
                      <Typography variant="body2" sx={{ fontWeight: 600 }}>
                        ${variant.price.toFixed(2)}
                      </Typography>
                    )}
                    <IconButton size="small" color="primary" sx={{ alignSelf: 'flex-end', mt: 1 }}>
                      <ArrowForwardIcon fontSize="small" />
                    </IconButton>
                  </CardContent>
                </StyledCard>
              </Grid>
            );
          })}
        </Grid>
      </Box>
    </Box>
  );
};

export default BestSellersPage;
