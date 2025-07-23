import React, { useEffect, useState } from "react";
import { useSearchParams, useNavigate } from "react-router-dom";
import {
  Grid,
  Typography,
  CircularProgress,
  Box,
  Divider,
} from "@mui/material";
import { ProductDto } from "../../models/Product";
import ProductService from "../../services/ProductService";
import SearchCard from "./SearchCard";
import Pagination from "./Pagination";

const PAGE_SIZE = 12;

const SearchLayout: React.FC = () => {
  const [searchParams, setSearchParams] = useSearchParams();
  const keyword = searchParams.get("query") || "";
  const [products, setProducts] = useState<ProductDto[]>([]);
  const [loading, setLoading] = useState(true);
  const [currentPage, setCurrentPage] = useState(1);
  const navigate = useNavigate();

  // Derived pagination data
  const totalPages = Math.ceil(products.length / PAGE_SIZE);
  const paginatedProducts = products.slice(
    (currentPage - 1) * PAGE_SIZE,
    currentPage * PAGE_SIZE
  );

  useEffect(() => {
    if (!keyword) return;

    setLoading(true);
    ProductService.search(keyword)
      .then((res) => {
        setProducts(res);
        setCurrentPage(1); // Reset to page 1 on new search
      })
      .catch((err) => {
        console.error(err);
        setProducts([]);
      })
      .finally(() => setLoading(false));
  }, [keyword]);

  const handlePageChange = (newPage: number) => {
    setCurrentPage(newPage);
    window.scrollTo({ top: 0, behavior: "smooth" });
  };

  return (
    <Box sx={{ mb: 5, p: { xs: 2, sm: 4 } }}>
      <Typography
        variant="h4"
        fontWeight={400}
        fontFamily="'Montserrat', sans-serif"
      >
        Search Results for "{keyword}"
      </Typography>

      {!loading && (
        <Typography variant="body2" color="text.secondary" sx={{ mb: 3 }}>
          {products.length} result{products.length !== 1 ? "s" : ""} found
        </Typography>
      )}

      <Divider sx={{ my: 2, width: "100%" }} />

      {loading ? (
        <Box display="flex" justifyContent="center" mt={6}>
          <CircularProgress />
        </Box>
      ) : products.length === 0 ? (
        <Typography mt={3}>No products found matching your search.</Typography>
      ) : (
        <>
          <Grid container spacing={3} mt={1}>
            {paginatedProducts.map((product) => {
              const allPrices = product.variants.map((v) => v.price);
              const allColors = [
                ...new Set(product.variants.map((v) => v.color).filter(Boolean)),
              ];
              const firstImage =
                product.variants[0]?.images?.[0]?.imageUrl || undefined;

              return (
                <Grid item xs={12} sm={6} md={4} lg={3} key={product.productId}>
                  <SearchCard
                    name={product.name}
                    colors={allColors}
                    prices={allPrices}
                    imageUrl={firstImage}
                    onClick={() => navigate(`/products/${product.productId}`)}
                  />
                </Grid>
              );
            })}
          </Grid>

          {totalPages > 1 && (
            <Pagination
              pageNumber={currentPage}
              totalPages={totalPages}
              handlePageChange={handlePageChange}
            />
          )}
        </>
      )}
    </Box>
  );
};

export default SearchLayout;
