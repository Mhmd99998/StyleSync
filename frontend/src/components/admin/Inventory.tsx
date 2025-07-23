import React, { useEffect, useState, useMemo } from 'react';
import {
  Box,
  Tabs,
  Tab,
  Typography,
  Card,
  CardContent,
  Stack,
  useMediaQuery,
  Divider,
  TextField,
  InputAdornment,
  IconButton,
  CircularProgress,
} from '@mui/material';
import { useTheme } from '@mui/material/styles';
import SearchIcon from '@mui/icons-material/Search';
import EditIcon from '@mui/icons-material/Edit';
import CheckIcon from '@mui/icons-material/Check';
import CloseIcon from '@mui/icons-material/Close';
import ProductService from '../../services/ProductService';
import { AdminProductDto } from '../../models/Product';
import { UpdateVariantDto } from '../../models/Variant';
import VariantService from '../../services/VariantService';
import { toast } from 'material-react-toastify';
import { sortSizes } from '../../utils/sizeUtils';

const Inventory: React.FC = () => {
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  const [products, setProducts] = useState<AdminProductDto[]>([]);
  const [tab, setTab] = useState<'ok' | 'low' | 'critical' | 'out'>('ok');
  const [search, setSearch] = useState<string>('');
  const [editingVariantId, setEditingVariantId] = useState<string | null>(null);
  const [newMinStock, setNewMinStock] = useState<number>(0);
  const [saving, setSaving] = useState<boolean>(false);

  useEffect(() => {
    const fetchProducts = async () => {
      const allProducts = (await ProductService.getAllProductsAdmin()).products;
      setProducts(allProducts);
    };
    fetchProducts();
  }, []);

  const handleTabChange = (_event: React.SyntheticEvent, newValue: typeof tab) => {
    setTab(newValue);
  };

  const categorizeProduct = (product: AdminProductDto): 'ok' | 'low' | 'critical' | 'out' => {
    const totalStock = product.variants.reduce((acc, variant) => acc + variant.stock, 0);
    const totalMinStock = product.variants.reduce((acc, variant) => acc + variant.minStock, 0);

    if (totalStock === 0) return 'out';
    if (totalStock <= totalMinStock) return 'critical';
    if (totalStock <= totalMinStock * 1.5) return 'low';
    return 'ok';
  };

  const tabCounts = useMemo(() => {
    const counts = { ok: 0, low: 0, critical: 0, out: 0 };
    for (const product of products) {
      const category = categorizeProduct(product);
      counts[category]++;
    }
    return counts;
  }, [products]);

  const filteredProducts = products
    .filter((product) => categorizeProduct(product) === tab)
    .filter((product) => {
      const searchLower = search.toLowerCase();
      return (
        product.name.toLowerCase().includes(searchLower) ||
        (product.sku && product.sku.toLowerCase().includes(searchLower))
      );
    });

  const handleStartEditing = (variantId: string, currentMinStock: number) => {
    setEditingVariantId(variantId);
    setNewMinStock(currentMinStock);
  };

  const handleCancelEditing = () => {
    setEditingVariantId(null);
    setNewMinStock(0);
  };

  const handleSaveEditing = async (variantId: string) => {
    try {
      setSaving(true);
      const product = products.find((p) => p.variants.some((v) => v.variantId === variantId));
      if (!product) return;

      const variant = product.variants.find((v) => v.variantId === variantId);
      if (!variant) return;

      const updatedVariant: UpdateVariantDto = {
        variantId: variant.variantId,
        productId: product.productId,
        size: variant.size,
        color: variant.color,
        price: variant.price,
        boughtAt: variant.boughtAt,
        stock: variant.stock,
        minStock: newMinStock,
        sku: variant.sku || "",
      };

      await VariantService.updateVariant(variantId, updatedVariant);
      toast.success("Updated successfully!");

      setProducts((prevProducts) =>
        prevProducts.map((p) =>
          p.productId !== product.productId
            ? p
            : {
              ...p,
              variants: p.variants.map((v) =>
                v.variantId === variantId ? { ...v, minStock: newMinStock } : v
              ),
            }
        )
      );

      setEditingVariantId(null);
      setNewMinStock(0);
    } catch (error) {
      toast.error("Something went wrong");
      console.error(error);
    } finally {
      setSaving(false);
    }
  };

  const getVariantStatusColor = (variant: { stock: number; minStock: number }, theme: any) => {
    if (variant.stock === 0) return theme.palette.error.main;
    if (variant.stock <= variant.minStock) return theme.palette.warning.main;
    if (variant.stock <= variant.minStock * 1.5) return theme.palette.warning.main;
    return theme.palette.success.main;
  };

  const getVariantStatusText = (variant: { stock: number; minStock: number }) => {
    if (variant.stock === 0) return 'Out of Stock';
    if (variant.stock <= variant.minStock) return 'Critical';
    if (variant.stock <= variant.minStock * 1.5) return 'Low Stock';
    return 'OK';
  };

  return (
    <Box sx={{ p: isMobile ? 2 : 4 }}>
      <Stack
        direction={isMobile ? 'column' : 'row'}
        justifyContent="space-between"
        alignItems={isMobile ? 'flex-start' : 'center'}
        spacing={2}
        mb={2}
      >
        <Typography variant="h5">Inventory Management</Typography>
        <Box
          sx={{
            display: 'flex',
            alignItems: 'center',
            gap: 1,
            flexGrow: 1,
            justifyContent: 'center',
          }}
        >
          <TextField
            size="small"
            variant="outlined"
            placeholder="Search product"
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
              width: 600,
              "& .MuiOutlinedInput-root": {
                backgroundColor: "rgba(255,255,255,0.04)",
              },
            }}
          />
        </Box>
      </Stack>

      <Tabs
        value={tab}
        onChange={handleTabChange}
        variant="scrollable"
        scrollButtons="auto"
        allowScrollButtonsMobile
        sx={{ mb: 3 }}
      >
        <Tab label={`OK (${tabCounts.ok})`} value="ok" />
        <Tab label={`Low Stock (${tabCounts.low})`} value="low" />
        <Tab label={`Critical (${tabCounts.critical})`} value="critical" />
        <Tab label={`Out of Stock (${tabCounts.out})`} value="out" />
      </Tabs>

      <Stack spacing={2}>
        {filteredProducts.length === 0 ? (
          <Typography color="text.secondary">No products found for this category.</Typography>
        ) : (
          filteredProducts.map((product) => {
            const totalStock = product.variants.reduce((acc, variant) => acc + variant.stock, 0);
            return (
              <Card
                key={product.productId}
                variant="outlined"
                sx={{
                  transition: '0.2s ease',
                  '&:hover': {
                    boxShadow: 4,
                  },
                }}
              >
                <CardContent>
                  <Stack
                    direction={isMobile ? 'column' : 'row'}
                    spacing={isMobile ? 1 : 4}
                    justifyContent="space-between"
                    alignItems={isMobile ? 'flex-start' : 'center'}
                  >
                    <Box>
                      <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>
                        Product Name
                      </Typography>
                      <Typography>{product.name}</Typography>
                    </Box>

                    <Box>
                      <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>
                        Product ID
                      </Typography>
                      <Typography>{product.productId}</Typography>
                    </Box>

                    <Box>
                      <Typography variant="subtitle1" sx={{ fontWeight: 600 }}>
                        Total Stock
                      </Typography>
                      <Typography>{totalStock}</Typography>
                    </Box>
                  </Stack>

                  <Divider sx={{ my: 1 }} />

                  <Stack spacing={0.5}>
                    {[...product.variants]
                      .sort((a, b) => {
                        const sorted = sortSizes([a.size, b.size]);
                        return sorted[0] === a.size ? -1 : 1;
                      })
                      .map((variant) => (
                        <Box
                          key={variant.variantId}
                          sx={{
                            display: 'flex',
                            alignItems: 'center',
                            justifyContent: 'space-between',
                          }}
                        >
                          <Box sx={{ display: 'flex', alignItems: 'center', gap: 2 }}>
                            <Typography variant="body1" sx={{ fontWeight: 500 }}>
                              {variant.size.toUpperCase()} / {variant.color.toUpperCase()}
                            </Typography>

                            <Typography variant="body2" color="text.secondary">
                              Min Stock:{" "}
                              {editingVariantId === variant.variantId ? (
                                <TextField
                                  size="small"
                                  value={newMinStock}
                                  onChange={(e) => setNewMinStock(Number(e.target.value))}
                                  sx={{ width: 70, ml: 1 }}
                                  type="number"
                                  disabled={saving}
                                />
                              ) : (
                                variant.minStock
                              )}
                            </Typography>

                            <Typography
                              variant="body2"
                              sx={{
                                color: getVariantStatusColor(variant, theme),
                                fontWeight: 600,
                                display: 'flex',
                                alignItems: 'center',
                                gap: 0.5,
                              }}
                            >
                              {variant.stock} in stock
                              <Typography
                                component="span"
                                variant="body2"
                                sx={{
                                  fontStyle: 'italic',
                                  fontWeight: 400,
                                  fontSize: '0.85rem',
                                  color: getVariantStatusColor(variant, theme),
                                  ml: 0.5,
                                }}
                              >
                                ({getVariantStatusText(variant)})
                              </Typography>
                            </Typography>
                          </Box>

                          {editingVariantId === variant.variantId ? (
                            <Box sx={{ display: 'flex', gap: 1, ml: 2 }}>
                              <IconButton
                                size="small"
                                color="success"
                                onClick={() => handleSaveEditing(variant.variantId)}
                                disabled={saving}
                              >
                                {saving ? <CircularProgress size={16} /> : <CheckIcon fontSize="small" />}
                              </IconButton>
                              <IconButton
                                size="small"
                                color="error"
                                onClick={handleCancelEditing}
                                disabled={saving}
                              >
                                <CloseIcon fontSize="small" />
                              </IconButton>
                            </Box>
                          ) : (
                            <IconButton
                              size="small"
                              onClick={() => handleStartEditing(variant.variantId, variant.minStock)}
                            >
                              <EditIcon fontSize="small" />
                            </IconButton>
                          )}
                        </Box>
                      ))}
                  </Stack>
                </CardContent>
              </Card>
            );
          })
        )}
      </Stack>
    </Box>
  );
};

export default Inventory;
