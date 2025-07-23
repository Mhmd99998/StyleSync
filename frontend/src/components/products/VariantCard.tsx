import React, { useState } from 'react';
import {
  Card, CardContent, Typography, Grid, Button, Box, CircularProgress,
  FormControl, Select, MenuItem, Chip, InputLabel, Switch,
  Accordion,
  AccordionDetails,
  AccordionSummary,
} from '@mui/material';
import ExpandMoreIcon from '@mui/icons-material/ExpandMore';
import CustomTextField from '../shared/CustomTextField';
import { AdminVariantDto } from '../../models/Variant';
import { toast } from 'material-react-toastify';
import ConfirmationPopup from '../shared/ConfirmationPopup';
import { getChipColor, getKnownColors, isLightColor } from '../../utils/colorUtils';

interface Props {
  variant: AdminVariantDto;
  onChange: (variantId: string, field: keyof AdminVariantDto, value: any) => void;
  isSaving: boolean;
  onDelete: (variantId: string) => void;
  onSave: (variantId: string) => void;
  isLoading: boolean;
}

const VariantCard: React.FC<Props> = ({ variant, onChange, isSaving, onDelete, onSave, isLoading }) => {
  const [isConfirmOpen, setIsConfirmOpen] = useState(false);
  const [isSavingLocally, setIsSavingLocally] = useState(false);

  const knownColors = getKnownColors();

  const handleDeleteVariant = async () => {
    try {
      const variantId = variant.variantId;
      onDelete(variantId);
      toast.success('Product variant deleted successfully');
    } catch (error) {
      console.error('Failed to delete product variant', error);
      toast.error('Failed to delete product variant');
      throw new Error('Failed to delete product variant');
    }
  };

  return (
    <Card sx={{ marginBottom: 2, maxWidth: 600, mx: 'auto', borderRadius: 3 }}>
      <CardContent>
        <Typography variant="h6" sx={{ mb: 2 }}>
          Variant ID: {variant.variantId}
        </Typography>
        <Grid container spacing={2}>
          <Grid item xs={12}>
            <CustomTextField
              label="Size"
              fullWidth
              value={variant.size}
              onChange={value => onChange(variant.variantId, 'size', value)}
              disabled={isSaving}
            />
            <FormControl fullWidth sx={{ mt: 2 }}>
              <InputLabel>Color</InputLabel>
              <Select
                value={variant.color}
                label="Color"
                onChange={(e) => onChange(variant.variantId, 'color', e.target.value)}
                disabled={isSaving}
                renderValue={(selected) => (
                  <Box sx={{ display: 'flex', alignItems: 'center', gap: 1 }}>
                    <Chip
                      size="small"
                      label={selected}
                      sx={{
                        backgroundColor: getChipColor(selected),
                        color: isLightColor(getChipColor(selected)) ? '#000' : '#fff',
                        textTransform: 'capitalize'
                      }}
                    />
                  </Box>
                )}
              >
                {Object.entries(knownColors).map(([name, hex]) => (
                  <MenuItem key={name} value={name}>
                    <Box sx={{ display: 'flex', alignItems: 'center', gap: 1 }}>
                      <Box
                        sx={{
                          width: 16,
                          height: 16,
                          borderRadius: '50%',
                          backgroundColor: hex,
                          border: `1px solid ${isLightColor(hex) ? '#ccc' : '#333'}`
                        }}
                      />
                      <Typography variant="body2" sx={{ textTransform: 'capitalize' }}>
                        {name}
                      </Typography>
                    </Box>
                  </MenuItem>
                ))}
              </Select>
            </FormControl>
            <CustomTextField
              label="Price"
              fullWidth
              value={variant.price.toString()}
              onChange={value => onChange(variant.variantId, 'price', parseFloat(value))}
              disabled={isSaving}
              sx={{ mt: 2 }}
            />
            {/* Sale Settings */}
            <Accordion sx={{ mt: 2 }}>
              <AccordionSummary expandIcon={<ExpandMoreIcon />}>
                <Typography>Sale Settings</Typography>
              </AccordionSummary>
              <AccordionDetails>
                <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
                  <Typography variant="subtitle1">On Sale</Typography>
                  <Switch
                    checked={variant.onSale !== undefined && variant.onSale > 0}
                    onChange={(e) => {
                      const isOnSale = e.target.checked;
                      onChange(variant.variantId, 'onSale', isOnSale ? variant.price : 0);
                    }}
                    disabled={isSaving}
                  />
                </Box>
                {variant.onSale !== undefined && variant.onSale > 0 && (
                  <CustomTextField
                    label="Sale Price"
                    fullWidth
                    value={variant.onSale?.toString() ?? ''}
                    onChange={(value) => onChange(variant.variantId, 'onSale', parseFloat(value))}
                    disabled={isSaving}
                  />
                )}
              </AccordionDetails>
            </Accordion>

            {/* Additional Info */}
            <Accordion sx={{ mt: 2 }}>
              <AccordionSummary expandIcon={<ExpandMoreIcon />}>
                <Typography>Additional Info</Typography>
              </AccordionSummary>
              <AccordionDetails>
                <CustomTextField
                  label="Bought At"
                  fullWidth
                  value={variant.boughtAt !== undefined && variant.boughtAt !== null ? variant.boughtAt.toString() : ''}
                  onChange={value => onChange(variant.variantId, 'boughtAt', parseFloat(value))}
                  disabled={isSaving}
                  sx={{ mb: 2 }}
                />
                <CustomTextField
                  label="Stock"
                  fullWidth
                  value={variant.stock.toString()}
                  onChange={value => onChange(variant.variantId, 'stock', parseFloat(value))}
                  disabled={isSaving}
                  sx={{ mb: 2 }}
                />
                <CustomTextField
                  label="SKU"
                  fullWidth
                  value={variant.sku}
                  onChange={value => onChange(variant.variantId, 'sku', value)}
                  disabled={isSaving}
                />
              </AccordionDetails>
            </Accordion>
          </Grid>
        </Grid>

        <Box sx={{ display: 'flex', gap: 2, mt: 3 }}>
          <Button
            variant="contained"
            color="primary"
            onClick={() => onSave(variant.variantId)}
            disabled={isSavingLocally || isSaving || isLoading}
            startIcon={isSavingLocally ? <CircularProgress size={18} color="inherit" /> : null}
          >
            {isSavingLocally ? 'SAVING...' : 'SAVE'}
          </Button>
          <Button
            variant="outlined"
            color="error"
            disabled={isSavingLocally || isSaving || isLoading}
            onClick={() => setIsConfirmOpen(true)}
          >
            DELETE
          </Button>
        </Box>
      </CardContent>

      <ConfirmationPopup
        open={isConfirmOpen}
        onClose={() => setIsConfirmOpen(false)}
        onConfirm={handleDeleteVariant}
        title="Confirm Deletion"
        message={`Are you sure you want to delete variant ID: ${variant.variantId}? This action cannot be undone.`}
        confirmButtonText="Delete"
        confirmColor="error"
      />
    </Card>
  );
};

export default VariantCard;
