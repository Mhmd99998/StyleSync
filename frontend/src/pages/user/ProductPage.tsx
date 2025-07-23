import {
  Box,
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
import FilterListIcon from "@mui/icons-material/FilterList";
import { useState, useEffect } from "react";
import { useSearchParams } from "react-router-dom";
import { ProductFilterDto } from "../../models/Product";
import Navbar from "../../components/shared/Navbar";
import ProductCatalog from "../../components/products/ProductCatalog";
import AdvancedFilter from "../../components/shared/AdvancedFilter";
import CategoryService from "../../services/CategoryService";
import { useTheme } from "@mui/material/styles";

type SortOption = 'relevancy' | 'price-asc' | 'price-desc';

const categorySubtitles: Record<string, string> = {
  men: "Explore the latest trends in men's fashion.",
  women: "Discover styles tailored for women.",
  "best sellers": "Our most popular picks right now.",
  "new arrivals": "Fresh off the shelves—newly added items.",
  "featured": "Explore our exclusive collection of trending products."
};

const ProductPage: React.FC = () => {
  const [searchParams] = useSearchParams();
  const category = searchParams.get('c')?.toLowerCase();
  const [filters, setFilters] = useState<ProductFilterDto | null>(null);
  const [filterOpen, setFilterOpen] = useState(false);
  const [sortOption, setSortOption] = useState<SortOption>('relevancy');

  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  const handleOpenFilter = () => setFilterOpen(true);
  const handleCloseFilter = () => setFilterOpen(false);

  const handleFilterChange = (newFilters: ProductFilterDto) => {
    setFilters(newFilters);
  };

  const handleSortChange = (event: SelectChangeEvent) => {
    const newSort = event.target.value as SortOption;
    setSortOption(newSort);
  };

  useEffect(() => {
    if (!category) return;    

    const fetchCategoryId = async () => {
      try {
        const categoryData = await CategoryService.getCategoryByName(category);
        if (categoryData) {
          setFilters({
            categoryIds: [categoryData.categoryId]
          });
        }
      } catch (error) {
        console.error("Error fetching category:", error);
      }
    };
    fetchCategoryId();

  }, [category]);

  const titleText = category ? category.toUpperCase() : "PRODUCT CATALOG";
  const subtitleText = categorySubtitles[category ?? ""] ?? "Browse our entire catalog of quality products";

  return (
    <Box
      sx={{
        display: "flex",
        flexDirection: "column",
        minHeight: "100vh",
        overflowX: "hidden",
        width: "100%",
        position: "relative"
      }}
    >
      <Navbar />

      {/* Filter Toggle */}
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

      {/* Page Header with Sorting Dropdown */}
      <Box
        sx={{
          display: 'flex',
          flexDirection: isMobile ? 'column' : 'row',
          alignItems: 'center',
          justifyContent: 'space-between',
          mt: 8,
          mb: 2,
          px: isMobile ? 2 : 6
        }}
      >
        <Box>
          <Typography
            variant="h4"
            fontWeight={500}
            sx={{ fontFamily: "'Poppins', sans-serif", mb: 0.5 }}
          >
            {titleText}
          </Typography>

          <Typography
            variant="subtitle1"
            sx={{ color: theme.palette.text.secondary, fontFamily: "'Poppins', sans-serif" }}
          >
            {subtitleText}
          </Typography>
        </Box>

        {/* Sort Dropdown */}
        <Box sx={{ mt: isMobile ? 2 : 0 }}>
          <FormControl size="small" sx={{ minWidth: 180 }}>
            <InputLabel id="sort-label">Sort By</InputLabel>
            <Select
              labelId="sort-label"
              value={sortOption}
              onChange={handleSortChange}
              label="Sort By"
            >
              <MenuItem value="relevancy" sx={{ fontFamily: "'Poppins', sans-serif", fontWeight: 400 }}>RELEVANCY</MenuItem>
              <MenuItem value="price-asc" sx={{ fontFamily: "'Poppins', sans-serif", fontWeight: 400 }}>PRICE: LOW TO HIGH</MenuItem>
              <MenuItem value="price-desc" sx={{ fontFamily: "'Poppins', sans-serif", fontWeight: 400 }}>PRICE: HIGH TO LOW</MenuItem>
            </Select>
          </FormControl>
        </Box>
      </Box>

      <Divider sx={{ mb: 4, mx: isMobile ? 2 : 6 }} />

      {/* Product Catalog */}
      {filters !== null && (
        <ProductCatalog filters={filters} sortOption={sortOption} />
      )}

      <Divider sx={{ my: 4, width: "100%" }} />

      {/* Advanced Filter Drawer */}
      <AdvancedFilter open={filterOpen} onClose={handleCloseFilter} onChange={handleFilterChange} />
    </Box>
  );
};

export default ProductPage;
