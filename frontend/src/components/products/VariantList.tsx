import React from 'react';
import { Box, Button, CircularProgress, Grid } from '@mui/material';
import { AdminProductDto } from '../../models/Product';
import VariantCard from './VariantCard';
import VariantService from '../../services/VariantService';
import { UpdateVariantDto } from '../../models/Variant';
import { toast } from 'material-react-toastify';
import VariantImageUploader from './VariantImageUploader';
import { sortSizes } from '../../utils/sizeUtils';
interface Props {
  product: AdminProductDto;
  setProduct: React.Dispatch<React.SetStateAction<AdminProductDto | null>>;
  isSaving: boolean;
}

const VariantList: React.FC<Props> = ({ product, setProduct, isSaving }) => {
  const [loadingVariants, setLoadingVariants] = React.useState<{ [id: string]: boolean }>({});
  const [isSavingAll, setIsSavingAll] = React.useState(false);

  const handleSaveAllVariants = async () => {
    setIsSavingAll(true);
    try {
      for (const variant of product.variants) {
        const updatePayload: UpdateVariantDto = {
          variantId: variant.variantId,
          productId: product.productId,
          size: variant.size,
          color: variant.color,
          sku: variant.sku || '',
          price: variant.price,
          boughtAt: variant.boughtAt,
          stock: variant.stock,
          minStock: variant.minStock,
          onSale: variant.onSale || 0,
        };

        await VariantService.updateVariant(variant.variantId, updatePayload);
      }
      toast.success('All variants saved successfully!');
    } catch (error) {
      console.error('Error saving all variants:', error);
      toast.error('Failed to save all variants');
    } finally {
      setIsSavingAll(false);
    }
  };

  const handleUpdateVariant = async (variantId: string) => {
    const variant = product.variants.find(v => v.variantId === variantId);
    if (!variant) return;

    const updatePayload: UpdateVariantDto = {
      variantId: variant.variantId,
      productId: product.productId,
      size: variant.size,
      color: variant.color,
      sku: variant.sku || '',
      price: variant.price,
      boughtAt: variant.boughtAt,
      stock: variant.stock,
      minStock: variant.minStock,
      onSale: variant.onSale || 0,
    };

    try {
      setVariantLoading(variantId, true);
      await VariantService.updateVariant(variantId, updatePayload);
      toast.success(`Variant ${variantId} saved`);
    } catch (error) {
      console.error(`Failed to save variant ${variantId}`, error);
      toast.error(`Failed to save variant ${variantId}`);
    } finally {
      setVariantLoading(variantId, false);
    }
  };

  const handleVariantChange = (variantId: string, field: keyof AdminProductDto['variants'][0], value: any) => {
    if (!isSaving) {
      setVariantLoading(variantId, true);
      setProduct(prev => {
        if (!prev) return null;
        const updatedVariants = prev.variants.map(variant =>
          variant.variantId === variantId ? { ...variant, [field]: value } : variant
        );
        return { ...prev, variants: updatedVariants };
      });

      setVariantLoading(variantId, false);
    }
  };

  const handleDeleteVariant = async (variantId: string) => {
    setVariantLoading(variantId, true);
    await VariantService.deleteVariant(variantId);
    setProduct(prev => {
      if (!prev) return null;
      const updatedVariants = prev.variants.filter(variant => variant.variantId !== variantId);
      return { ...prev, variants: updatedVariants };
    });
    setVariantLoading(variantId, false);
  };

  const setVariantLoading = (id: string, value: boolean) => {
    setLoadingVariants(prev => ({ ...prev, [id]: value }));
  };

  const groupedByColor = product.variants.reduce<Record<string, string[]>>((acc, variant) => {
    const key = variant.color.toLowerCase();
    if (!acc[key]) acc[key] = [];
    acc[key].push(variant.variantId);
    return acc;
  }, {});

  // Sort variants by size before rendering
  const sortedVariants = [...product.variants].sort((a, b) => {
    const sortedSizes = sortSizes(product.variants.map(v => v.size));
    return sortedSizes.indexOf(a.size.toUpperCase()) - sortedSizes.indexOf(b.size.toUpperCase());
  });

  return (
    <>
      <Box sx={{ mt: 3 }}>
        <Grid container spacing={1}>
          {sortedVariants.map(variant => (
            <Grid item xs={12} sm={6} md={4} lg={4} key={variant.variantId}>
              <VariantCard
                variant={variant}
                onChange={handleVariantChange}
                onDelete={handleDeleteVariant}
                onSave={handleUpdateVariant}
                isSaving={isSaving}
                isLoading={!!loadingVariants[variant.variantId]}
              />
            </Grid>
          ))}
        </Grid>
      </Box>

      <VariantImageUploader
        colorGroups={groupedByColor}
        existingImages={Object.fromEntries(
          product.variants.map(variant => [variant.variantId, variant.images])
        )}
        onUpdateImages={(variantId, images) => {
          setProduct(prev => {
            if (!prev) return null;
            const updatedVariants = prev.variants.map(variant =>
              variant.variantId === variantId ? { ...variant, images } : variant
            );
            return { ...prev, variants: updatedVariants };
          });
        }}
      />

      <Box my={4} display="flex" justifyContent="center">
        <Button
          variant="contained"
          color="primary"
          onClick={handleSaveAllVariants}
          disabled={isSavingAll}
          sx={{
            px: 5,
            py: 2,
            fontSize: '1.1rem',
            minWidth: { xs: '100%', sm: '60%' },
            borderRadius: 2,
            boxShadow: 3,
          }}
        >
          {isSavingAll ? <CircularProgress size={24} color="inherit" /> : 'SAVE ALL VARIANTS'}
        </Button>
      </Box>
    </>
  );
};

export default VariantList;
