import React, { useEffect, useState } from "react";
import {
  Box,
  Container,
  Grid,
  CircularProgress,
  Typography,
  Divider,
  IconButton,
  Tooltip,
  Select,
  MenuItem,
  FormControl,
  InputLabel,
  SelectChangeEvent,
  useMediaQuery
} from "@mui/material";
import { useNavigate, useSearchParams } from "react-router-dom";
import FilterListIcon from "@mui/icons-material/FilterList";
import { useTheme } from "@mui/material/styles";
import { toast } from 'material-react-toastify';

import ProductCard from "./ProductCard";
import ProductService from "../../services/ProductService";
import CategoryService from "../../services/CategoryService";
import { ProductDto, ProductFilterDto } from "../../models/Product";
import Pagination from "../shared/Pagination";
import AdvancedFilter from "../shared/AdvancedFilter";
import Navbar from "../shared/Navbar";

type SortOption = 'relevancy' | 'price-asc' | 'price-desc';

const categorySubtitles: Record<string, string> = {
  men: "Explore the latest trends in men's fashion.",
  women: "Discover styles tailored for women.",
  "best sellers": "Our most popular picks right now.",
  "new arrivals": "Fresh off the shelves—newly added items.",
  "featured": "Explore our exclusive collection of trending products."
};

const ProductCatalog: React.FC = () => {
  const [products, setProducts] = useState<ProductDto[]>([]);
  const [pageNumber, setPageNumber] = useState(1);
  const [pageSize] = useState(20);
  const [totalProducts, setTotalProducts] = useState(0);
  const [loading, setLoading] = useState(false);
  const [filters, setFilters] = useState<ProductFilterDto | null>(null);
  const [sortOption, setSortOption] = useState<SortOption>('relevancy');
  const [filterOpen, setFilterOpen] = useState(false);
  const [filtersReady, setFiltersReady] = useState(false);

  const navigate = useNavigate();
  const [searchParams] = useSearchParams();
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  const category = searchParams.get('c')?.toLowerCase() ?? "";
  const titleText = category ? category.toUpperCase() : "PRODUCT CATALOG";
  const subtitleText = categorySubtitles[category] ?? "Browse our entire catalog of quality products";

  // useEffect(() => {
  //   console.log("Filters changed:", filters);
  // }, [filters]);

  useEffect(() => {
    if (!category) {
      // No category in URL: initialize empty filters and mark as ready immediately
      setFilters({});
      setFiltersReady(true);
      return;
    }

    const fetchCategory = async () => {
      try {
        const categoryData = await CategoryService.getCategoryByName(category);
        if (categoryData) {
          setFilters({ categoryIds: [categoryData.categoryId] });
        }
      } catch (error) {
        console.error("Error fetching category:", error);
        toast.error("Unable to load category.");
      } finally {
        setFiltersReady(true); 
      }
    };

    fetchCategory();
  }, [category]);


  useEffect(() => {
    if (!filtersReady || !filters) return;

    const fetchProducts = async () => {
      setLoading(true);
      try {
        const response = await ProductService.getAllProducts(
          pageNumber,
          pageSize,
          { ...filters, isArchived: false }
        );

        let fetchedProducts = response.products || [];

        switch (sortOption) {
          case 'price-asc':
            fetchedProducts.sort((a, b) =>
              Math.min(...a.variants.map(v => v.price)) -
              Math.min(...b.variants.map(v => v.price))
            );
            break;
          case 'price-desc':
            fetchedProducts.sort((a, b) =>
              Math.max(...b.variants.map(v => v.price)) -
              Math.max(...a.variants.map(v => v.price))
            );
            break;
        }

        setProducts(fetchedProducts);
        setTotalProducts(response.totalProducts || 0);
      } catch (error) {
        console.error("Error fetching products:", error);
        toast.error("Error fetching products");
      } finally {
        setLoading(false);
      }
    };

    fetchProducts();
  }, [filtersReady, filters, pageNumber, sortOption]);

  const handlePageChange = (newPage: number) => {
    if (newPage > 0 && newPage <= Math.ceil(totalProducts / pageSize)) {
      setPageNumber(newPage);
    }
  };

  const handleCardClick = (productId: string) => {
    navigate(`/products/${productId}`);
  };

  const handleSortChange = (event: SelectChangeEvent) => {
    setSortOption(event.target.value as SortOption);
  };

  const handleOpenFilter = () => setFilterOpen(true);
  const handleCloseFilter = () => setFilterOpen(false);

  const handleFilterChange = (newFilters: ProductFilterDto) => {
    setPageNumber(1);

    // Clean undefined values
    const cleanedFilters = Object.fromEntries(
      Object.entries(newFilters).filter(([_, v]) => v !== undefined)
    ) as ProductFilterDto;

    setFilters(prev => ({ ...(prev ?? {}), ...cleanedFilters }));
  };

  const getDefaultImageUrl = (product: ProductDto): string | undefined => {
    for (const variant of product.variants) {
      if (variant.images?.length) {
        const defaultImg = variant.images.find(img => img.isDefault);
        return defaultImg ? defaultImg.imageUrl : variant.images[0].imageUrl;
      }
    }
    return undefined;
  };

  const totalPages = Math.ceil(totalProducts / pageSize);

  return (
    <Box sx={{ display: "flex", flexDirection: "column", minHeight: "100vh", overflowX: "hidden" }}>
      {category && <Navbar />}

      <Tooltip title="Open Filters">
        <IconButton
          onClick={handleOpenFilter}
          sx={{
            position: "fixed",
            top: 90,
            left: 16,
            zIndex: (theme) => theme.zIndex.appBar + 1,
            backgroundColor: "background.paper",
            boxShadow: 3,
            "&:hover": { backgroundColor: "background.default" },
          }}
        >
          <FilterListIcon />
        </IconButton>
      </Tooltip>

      <Box
        sx={{
          display: 'flex',
          flexDirection: isMobile ? 'column' : 'row',
          alignItems: 'center',
          justifyContent: 'space-between',
          mt: 5,
          mb: 2,
          px: isMobile ? 2 : 6
        }}
      >
        <Box>
          <Typography variant="h4" fontWeight={500} sx={{ fontFamily: "'Poppins', sans-serif", mb: 0.5 }}>
            {titleText}
          </Typography>
          <Typography
            variant="subtitle1"
            sx={{ color: theme.palette.text.secondary, fontFamily: "'Poppins', sans-serif" }}
          >
            {subtitleText}
          </Typography>
        </Box>

        <Box sx={{ mt: isMobile ? 2 : 0 }}>
          <FormControl size="small" sx={{ minWidth: 180 }}>
            <InputLabel id="sort-label">Sort By</InputLabel>
            <Select
              labelId="sort-label"
              value={sortOption}
              onChange={handleSortChange}
              label="Sort By"
            >
              <MenuItem value="relevancy">RELEVANCY</MenuItem>
              <MenuItem value="price-asc">PRICE: LOW TO HIGH</MenuItem>
              <MenuItem value="price-desc">PRICE: HIGH TO LOW</MenuItem>
            </Select>
          </FormControl>
        </Box>
      </Box>

      <Divider sx={{ mb: 4, mx: isMobile ? 2 : 6 }} />

      {loading ? (
        <Box display="flex" justifyContent="center" alignItems="center" minHeight="40vh" flexDirection="column">
          <CircularProgress size={60} thickness={5} />
          <Typography fontFamily="'Montserrat', sans-serif" fontWeight={300} mt={2}>
            Loading products...
          </Typography>
        </Box>
      ) : (
        <>
          <Container maxWidth="xl" sx={{ mt: 2, mb: 4, px: { xs: 1, sm: 2, md: 3 } }}>
            <Grid container spacing={{ xs: 2, sm: 3 }} justifyContent="center" sx={{ padding: { xs: '8px', sm: '16px' } }}>
              {products.map(product => {
                const colors = [...new Set(product.variants.map(variant => variant.color))];
                const variantPrices = product.variants.map(variant => ({
                  price: variant.price,
                  onSale: variant.onSale && variant.onSale > 0 ? variant.onSale : undefined,
                }));

                const variantImagesByColor: Record<string, string> = {};
                product.variants.forEach(variant => {
                  const color = variant.color;
                  if (!variantImagesByColor[color] && variant.images?.length) {
                    const defaultImage = variant.images.find(img => img.isDefault);
                    variantImagesByColor[color] = defaultImage
                      ? defaultImage.imageUrl
                      : variant.images[0].imageUrl;
                  }
                });

                return (
                  <Grid
                    item
                    key={product.productId}
                    xs={6}
                    sm={4}
                    md={3}
                    lg={3}
                    xl={2}
                    sx={{
                      display: 'flex',
                      justifyContent: 'center',
                      minWidth: 300,
                      maxWidth: 400,
                      flexGrow: 1,
                      margin: '8px !important',
                    }}
                  >
                    <ProductCard
                      name={product.name}
                      colors={colors}
                      variantPrices={variantPrices}
                      variantImagesByColor={variantImagesByColor}
                      imageUrl={getDefaultImageUrl(product)}
                      onImageClick={() => handleCardClick(product.productId)}
                      sx={{
                        width: '100%',
                        height: '100%',
                        maxWidth: '100%',
                        margin: '0 auto',
                      }}
                    />
                  </Grid>
                );
              })}
            </Grid>

            <Pagination
              pageNumber={pageNumber}
              totalPages={totalPages}
              handlePageChange={handlePageChange}
            />
          </Container>

          <Divider sx={{ my: 4, width: "100%" }} />
        </>
      )}

      <AdvancedFilter
        open={filterOpen}
        onClose={handleCloseFilter}
        onChange={handleFilterChange}
        defaultFilters={
          filters ? Object.fromEntries(
            Object.entries(filters).filter(([_, v]) => v !== undefined)
          ) as ProductFilterDto : undefined
        }
      />
    </Box>
  );
};

export default ProductCatalog;
