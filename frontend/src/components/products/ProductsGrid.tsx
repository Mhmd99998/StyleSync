import React, { useState, useEffect } from 'react';
import { GridColDef, GridPaginationModel, GridRowId } from '@mui/x-data-grid';
import { Button, Box, Stack, InputAdornment, TextField } from '@mui/material';
import { useNavigate } from 'react-router-dom';
import ProductService from '../../services/ProductService';
import UniversalGrid from '../shared/UniveralGrid';
import ConfirmationPopup from '../shared/ConfirmationPopup';
import { AdminProductDto, ProductFilterDto } from '../../models/Product';
import NewProductModal from './NewProductModal';
import CategoryService from '../../services/CategoryService';
import { toast } from 'material-react-toastify';
import ArrowBackIosNewIcon from '@mui/icons-material/ArrowBackIosNew';
import UnderlinedButton from '../shared/UnderlinedButton';
import SearchIcon from "@mui/icons-material/Search";
import AdminProductFilterSidebar from './AdminProductFilterSidebar';

interface ProductWithStock extends AdminProductDto {
  totalStock: number;
}

const ProductsGrid: React.FC = () => {
  const navigate = useNavigate();
  const [products, setProducts] = useState<ProductWithStock[]>([]);
  const [paginationModel, setPaginationModel] = useState<GridPaginationModel>({
    page: 0,
    pageSize: 10,
  });
  const [totalProducts, setTotalProducts] = useState(0);
  const [deleteId, setDeleteId] = useState<string | null>(null);
  const [isConfirmOpen, setIsConfirmOpen] = useState(false);
  const [isNewProductOpen, setIsNewProductOpen] = useState(false);
  const [search, setSearch] = useState('');
  const [filters, setFilters] = useState<ProductFilterDto>({}); // ✅ LOCAL STATE

  useEffect(() => {
    fetchProducts();
  }, [paginationModel, search, filters]);

  const fetchProducts = async () => {
    try {
      const response = await ProductService.getAllProductsAdmin(
        paginationModel.page + 1,
        paginationModel.pageSize,
        {
          searchTerm: search.trim(),
          ...filters,
        }
      );

      setTotalProducts(response.totalProducts);

      const processedProducts: ProductWithStock[] = (response.products || response).map(
        (product: AdminProductDto) => ({
          ...product,
          totalStock: product.variants.reduce((total, variant) => total + variant.stock, 0),
        })
      );
      setProducts(processedProducts);
    } catch (error) {
      console.error('Error fetching products:', error);
    }
  };

  const handleEdit = (id: GridRowId) => {
    navigate(`/admin/products/edit/${id}`);
  };

  const handleDelete = (id: GridRowId) => {
    setDeleteId(String(id));
    setIsConfirmOpen(true);
  };

  const handleNewProduct = () => {
    setIsNewProductOpen(true);
  };

  const handleProductCreated = async (
    name: string,
    sku: string,
    description: string,
    isArchived: boolean,
    categoryIds: string[]
  ) => {
    try {
      const categoryPromises = categoryIds.map((id) => CategoryService.getCategoryById(id));
      const fullCategories = await Promise.all(categoryPromises);

      const newProduct = await ProductService.createProduct({
        name,
        description,
        sku,
        isArchived,
        categories: fullCategories,
        variants: [],
      });

      const processedNewProduct: ProductWithStock = {
        ...newProduct,
        variants: newProduct.variants.map((v) => ({
          ...v,
          minStock: v.minStock ?? 0,
        })),
        totalStock: newProduct.variants.reduce((total, variant) => total + variant.stock, 0),
      };

      setProducts((prev) => [processedNewProduct, ...prev]);
      await fetchProducts();
      setIsNewProductOpen(false);
      toast.success("Product created successfully!");
    } catch (error) {
      toast.error("Something went wrong");
      console.error('Error creating product:', error);
    }
  };

  const confirmDelete = async () => {
    if (deleteId) {
      try {
        await ProductService.deleteProduct(deleteId);
        toast.success("Product deleted successfully!");
        setIsConfirmOpen(false);
        setDeleteId(null);
        fetchProducts();
      } catch (error) {
        toast.error("Failed to delete product");
        console.error('Error deleting product:', error);
      }
    }
  };

  const columns: GridColDef[] = [
    { field: 'productId', headerName: 'ID', flex: 2 },
    { field: 'name', headerName: 'NAME', flex: 2 },
    { field: 'description', headerName: 'DESCRIPTION', flex: 5 },
    {
      field: 'totalStock',
      headerName: 'STOCK',
      flex: 0.8,
      align: 'center',
      headerAlign: 'center',
    },
    {
      field: 'edit',
      headerName: '',
      width: 100,
      align: 'center',
      headerAlign: 'center',
      renderCell: (params) => (
        <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', width: '100%', mt: 0.8 }}>
          <Button
            variant="contained"
            color="primary"
            size="medium"
            onClick={() => handleEdit(params.id)}
          >
            EDIT
          </Button>
        </Box>
      ),
    },
    {
      field: 'delete',
      headerName: '',
      width: 100,
      align: 'center',
      headerAlign: 'center',
      renderCell: (params) => (
        <Box sx={{ display: 'flex', justifyContent: 'center', alignItems: 'center', width: '100%', mt: 0.8 }}>
          <Button
            variant="contained"
            color="secondary"
            size="medium"
            onClick={() => handleDelete(params.id)}
          >
            DELETE
          </Button>
        </Box>
      ),
    },
  ];

  return (
    <Box sx={{ padding: 3, mt: 6}}>
      <Stack
        direction="row"
        spacing={2}
        alignItems="center"
        justifyContent="flex-start"
        flexWrap="wrap"
        sx={{ mb: 3 }}
      >
        {/* Grouped Back + New Product */}
        <Stack direction="row" spacing={1} alignItems="center">
          <UnderlinedButton
            startIcon={<ArrowBackIosNewIcon />}
            onClick={() => navigate("/admin")}
          >
            BACK
          </UnderlinedButton>

          <Button
            variant="contained"
            color="secondary"
            onClick={handleNewProduct}
          >
            NEW PRODUCT
          </Button>
        </Stack>

        {/* Small space before filters */}
        <Box sx={{ width: 12 }} />

        <AdminProductFilterSidebar
          filters={filters}
          onChange={(newFilters) => setFilters(newFilters)}
        />

        {/* Larger space before search */}
        <Box sx={{ flexGrow: 1 }} />

        <TextField
          size="small"
          variant="outlined"
          placeholder="Search products"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <SearchIcon fontSize="small" />
              </InputAdornment>
            ),
            sx: {
              backgroundColor: "rgba(0, 0, 0, 0.03)",
              backdropFilter: "blur(4px)",
              borderRadius: 2,
            },
          }}
          sx={{
            width: 400,
            "& .MuiOutlinedInput-root": {
              backgroundColor: "rgba(255,255,255,0.04)",
            },
          }}
        />
      </Stack>

      <UniversalGrid
        rows={products}
        columns={columns}
        initialPageSize={paginationModel.pageSize}
        paginationModel={paginationModel}
        onPaginationModelChange={setPaginationModel}
        getRowId={(row) => row.productId}
        rowCount={totalProducts}
        paginationMode="server"
      />

      <ConfirmationPopup
        open={isConfirmOpen}
        title="Confirm Delete"
        message="Are you sure you want to delete this product?"
        onClose={() => setIsConfirmOpen(false)}
        confirmColor='error'
        onConfirm={confirmDelete}
      />

      <NewProductModal
        open={isNewProductOpen}
        onClose={() => setIsNewProductOpen(false)}
        onProductCreated={handleProductCreated}
      />
    </Box>
  );
};

export default ProductsGrid;
