import { Box, Divider, Grid, IconButton, Tooltip, Typography } from "@mui/material";
import FilterListIcon from "@mui/icons-material/FilterList";
import { useRef, useState } from "react";
import ProductCatalog from "../components/products/ProductCatalog";
import Navbar from "../components/shared/Navbar";
import AdvancedFilter from "../components/shared/AdvancedFilter";
import { ProductFilterDto } from "../models/Product";
import HeroSection from "../components/shared/HeroSection";
import HighlightFeatures from "./HighlightFeatures";
import FeaturedProducts from "./FeaturedProducts";
import { useNavigate } from "react-router-dom";

const HomePage: React.FC = () => {
  const navigate = useNavigate();

  const [filterOpen, setFilterOpen] = useState(false);
  const [filters, setFilters] = useState<ProductFilterDto>({});

  const featuredProductsRef = useRef<HTMLElement | null>(null);

  const handleOpenFilter = () => setFilterOpen(true);
  const handleCloseFilter = () => setFilterOpen(false);
  const handleFilterChange = (newFilters: ProductFilterDto) => {
    setFilters(newFilters);
  };

  const scrollToFeaturedProducts = () => {
    featuredProductsRef.current?.scrollIntoView({ behavior: "smooth" });
  };

  return (
    <Box sx={{ display: "flex", flexDirection: "column", minHeight: "100vh", overflowX: "hidden", width: "100%", position: "relative" }}>
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

      {/* Hero Section */}
      <HeroSection onScrollToFeaturedProducts={scrollToFeaturedProducts} />

      {/* BROWSE BY CATEGORY Section */}
      <Box sx={{ px: 2, mt: 4 }}>
        <Typography
          variant="h4"
          fontWeight={500}
          textAlign="center"
          sx={{ fontFamily: "'Poppins', sans-serif", mb: 4 }}
        >
          BROWSE BY CATEGORY
        </Typography>

        {/* Divider */}
        <Divider sx={{ my: 2, width: "100%" }} />

        <Grid container spacing={1}>
          {["MEN", "WOMEN", "KIDS"].map((label) => (
            <Grid item xs={12} sm={4} key={label}>
              <Box
                onClick={() => navigate(`/c?c=${encodeURIComponent(label)}`)}
                sx={{
                  display: "block",
                  position: "relative",
                  width: "100%",
                  paddingTop: "100%",
                  backgroundImage: `url(/assets/${label.toLowerCase()}.jpg)`,
                  backgroundSize: "cover",
                  backgroundPosition: "center",
                  borderRadius: 1,
                  overflow: "hidden",
                  boxShadow: 3,
                  cursor: "pointer",
                  "&:hover": {
                    boxShadow: 6,
                  },
                }}
              >
                <Box
                  sx={{
                    position: "absolute",
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    backgroundColor: "rgba(0,0,0,0.4)",
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    color: "#fff",
                    fontWeight: 600,
                    fontSize: "1.4rem",
                    letterSpacing: 1,
                    textTransform: "uppercase",
                  }}
                >
                  {label}
                </Box>
              </Box>
            </Grid>
          ))}
        </Grid>
      </Box>

      {/* Highlights */}
      <HighlightFeatures />

      {/* Featured Products */}
      <FeaturedProducts ref={featuredProductsRef} />

      {/* Section Title Before Catalog */}
      <Divider sx={{ width: "100%" }} />
      <Box sx={{ textAlign: 'center', my: 2, px: 2 }}>
        <Typography
          variant="h4"
          fontWeight={500}
          sx={{ fontFamily: "'Poppins', sans-serif" }}
        >
          BROWSE OUR COLLECTION
        </Typography>
      </Box>
      <Divider sx={{ width: "100%" }} />

      {/* Full Product Catalog */}
      <ProductCatalog />

      {/* Divider */}
      <Divider sx={{ my: 4, width: "100%" }} />

      {/* Advanced Filter Drawer */}
      <AdvancedFilter
        open={filterOpen}
        onClose={handleCloseFilter}
        onChange={handleFilterChange}
      />
    </Box>
  );
};

export default HomePage;
