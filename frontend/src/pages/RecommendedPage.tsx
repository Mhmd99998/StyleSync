import React, { useEffect, useState, useRef, useCallback } from 'react';
import {
  Box,
  Grid,
  Typography,
  CircularProgress,
  useMediaQuery,
  Divider,
  Select,
  MenuItem,
  FormControl,
  InputLabel,
  SelectChangeEvent,
} from '@mui/material';
import { useTheme } from '@mui/material/styles';
import RecommendationService from '../services/RecommendationService';
import { ProductDto } from '../models/Product';
import { useSelector } from 'react-redux';
import { RootState } from '../redux/store';
import RecommendedCard from '../components/shared/RecommendedCard';
import { useNavigate } from 'react-router-dom';
import Navbar from '../components/shared/Navbar';

const MAX_RECOMMENDED_ITEMS = 24;
const ITEMS_PER_LOAD = 10;

type SortOption = 'relevancy' | 'price-asc' | 'price-desc';

interface DisplayPrice {
  lowestSalePrice: number;
  highestOriginalPrice: number;
  isOnSale: boolean;
}

const RecommendedPage: React.FC = () => {
  const userId = useSelector((state: RootState) => state.user.userId);
  const navigate = useNavigate();

  const [allProducts, setAllProducts] = useState<ProductDto[]>([]);
  const [visibleProducts, setVisibleProducts] = useState<ProductDto[]>([]);
  const [loading, setLoading] = useState(false);
  const [hasMore, setHasMore] = useState(true);
  const [sortOption, setSortOption] = useState<SortOption>('relevancy');

  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));
  const observerRef = useRef<HTMLDivElement | null>(null);

  const isProductOnSale = (product: ProductDto): boolean => {
    return product.variants.some((variant) => variant.onSale > 0);
  };

  const getDisplayPrice = (product: ProductDto): DisplayPrice => {
    const originalPrices = product.variants.map((v) => v.price);
    const salePrices = product.variants.map((v) =>
      v.onSale > 0 ? v.price * (1 - v.onSale / 100) : v.price
    );

    const isOnSale = isProductOnSale(product);
    return {
      lowestSalePrice: Math.min(...salePrices),
      highestOriginalPrice: Math.max(...originalPrices),
      isOnSale,
    };
  };

  const sortProducts = (products: ProductDto[], option: SortOption): ProductDto[] => {
    return [...products].sort((a, b) => {
      const aPrice = getDisplayPrice(a).lowestSalePrice;
      const bPrice = getDisplayPrice(b).lowestSalePrice;
      if (option === 'price-asc') return aPrice - bPrice;
      if (option === 'price-desc') return bPrice - aPrice;
      return 0;
    });
  };

  const getDefaultImage = (product: ProductDto): string | undefined => {
    for (const variant of product.variants) {
      if (variant.images && variant.images.length > 0) {
        const defaultImage = variant.images.find(img => img.isDefault);
        return defaultImage ? defaultImage.imageUrl : variant.images[0].imageUrl;
      }
    }
    return undefined;
  };

  const loadMoreProducts = useCallback(() => {
    if (loading || !hasMore) return;
    setLoading(true);

    setTimeout(() => {
      setVisibleProducts((prevVisible) => {
        const sortedAll = sortProducts(allProducts, sortOption);
        const nextItems = sortedAll.slice(prevVisible.length, prevVisible.length + ITEMS_PER_LOAD);
        const updated = [...prevVisible, ...nextItems];

        if (updated.length >= sortedAll.length) {
          setHasMore(false);
        }

        return updated;
      });
      setLoading(false);
    }, 300);
  }, [allProducts, loading, hasMore, sortOption]);

  useEffect(() => {
    const fetchInitialRecommendations = async () => {
      if (!userId) {
        navigate('/');
        return;
      }

      try {
        const products = await RecommendationService.recommend(userId, MAX_RECOMMENDED_ITEMS);
        const uniqueProductsMap = new Map<string, ProductDto>();
        products.forEach((product) => {
          if (!uniqueProductsMap.has(product.productId)) {
            uniqueProductsMap.set(product.productId, product);
          }
        });

        const uniqueProducts = Array.from(uniqueProductsMap.values());
        const sorted = sortProducts(uniqueProducts, sortOption);
        const initialSlice = sorted.slice(0, ITEMS_PER_LOAD);

        setAllProducts(uniqueProducts);
        setVisibleProducts(initialSlice);
        setHasMore(initialSlice.length < sorted.length);
      } catch (error) {
        console.error('Failed to load recommended products:', error);
        setHasMore(false);
      }
    };

    fetchInitialRecommendations();
  }, [userId, navigate, sortOption]);

  useEffect(() => {
    const observer = new IntersectionObserver(
      (entries) => {
        if (entries[0].isIntersecting && hasMore) {
          loadMoreProducts();
        }
      },
      { threshold: 1.0 }
    );
    if (observerRef.current) observer.observe(observerRef.current);
    return () => {
      if (observerRef.current) observer.unobserve(observerRef.current);
    };
  }, [loadMoreProducts, hasMore]);

  const handleSortChange = (event: SelectChangeEvent) => {
    const newOption = event.target.value as SortOption;
    setSortOption(newOption);

    const sorted = sortProducts(allProducts, newOption);
    const initialSlice = sorted.slice(0, ITEMS_PER_LOAD);

    setVisibleProducts(initialSlice);
    setHasMore(initialSlice.length < sorted.length);
  };

  return (
    <>
      <Navbar />
      <Box sx={{ px: isMobile ? 2 : 6, py: 5 }}>
        <Box
          sx={{
            display: 'flex',
            flexDirection: isMobile ? 'column' : 'row',
            alignItems: isMobile ? 'flex-start' : 'center',
            justifyContent: 'space-between',
            mb: 2,
          }}
        >
          <Box>
            <Typography variant="h4" sx={{ fontFamily: `'Montserrat', sans-serif`, fontWeight: 400, mb: 1 }}>
              JUST FOR YOU
            </Typography>
            <Typography variant="subtitle1" sx={{ fontFamily: `'Poppins', sans-serif`, color: theme.palette.text.secondary }}>
              Curated picks tailored to your taste
            </Typography>
          </Box>

          <FormControl size="small" sx={{ mt: isMobile ? 2 : 0, minWidth: 180 }}>
            <InputLabel id="sort-label">Sort By</InputLabel>
            <Select labelId="sort-label" value={sortOption} onChange={handleSortChange} label="Sort By">
              <MenuItem value="relevancy">RELEVANCY</MenuItem>
              <MenuItem value="price-asc">PRICE: LOW TO HIGH</MenuItem>
              <MenuItem value="price-desc">PRICE: HIGH TO LOW</MenuItem>
            </Select>
          </FormControl>
        </Box>

        <Divider sx={{ mb: 4 }} />

        <Grid container spacing={isMobile ? 2 : 3} justifyContent="center">
          {visibleProducts.map((product) => {
            const colors = [...new Set(product.variants.map((v) => v.color))];
            const imageUrl = getDefaultImage(product);
            const price = getDisplayPrice(product);

            return (
              <Grid item xs={12} sm={6} md={4} lg={3} key={product.productId}>
                <RecommendedCard
                  name={product.name}
                  imageUrl={imageUrl}
                  colors={colors}
                  price={price}
                  onClick={() => navigate(`/products/${product.productId}`)}
                />
              </Grid>
            );
          })}
        </Grid>

        {hasMore && (
          <Box ref={observerRef} sx={{ display: 'flex', justifyContent: 'center', py: 4 }}>
            <CircularProgress size={30} />
          </Box>
        )}

        {!hasMore && visibleProducts.length > 0 && (
          <Typography
            variant="body2"
            sx={{ fontFamily: `'Poppins', sans-serif`, textAlign: 'center', mt: 4, mb: 2, color: theme.palette.text.secondary }}
          >
            You've seen all your recommendations for now.
          </Typography>
        )}
      </Box>
    </>
  );
};

export default RecommendedPage;
