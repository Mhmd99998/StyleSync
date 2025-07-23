import React, { useState } from 'react';
import {
  Dialog, DialogTitle, DialogContent, DialogActions,
  Button, TextField, Grid, Box, Typography,
  FormControl, InputLabel, Select, MenuItem, Chip
} from '@mui/material';
import { CloudUpload } from '@mui/icons-material';
import { CreateVariantDto } from '../../models/Variant';
import { getKnownColors, getChipColor, isLightColor } from '../../utils/colorUtils';

interface AddVariantFormProps {
  open: boolean;
  onClose: () => void;
  onAdd: (variant: CreateVariantDto) => Promise<void>;
  existingVariants: { size: string; color: string }[];
}

const AddVariantForm: React.FC<AddVariantFormProps> = ({ open, onClose, onAdd, existingVariants }) => {
  const [size, setSize] = useState<string>('');
  const [color, setColor] = useState<string>('');
  const [stock, setStock] = useState<number | ''>('');
  const [minStock, setMinStock] = useState<number | ''>('');
  const [sku, setSku] = useState<string>('');
  const [price, setPrice] = useState<number | ''>('');
  const [boughtAt, setBoughtAt] = useState<number | ''>('');
  const [images, setImages] = useState<File[]>([]);
  const [error, setError] = useState<string>('');
  const [fieldErrors, setFieldErrors] = useState({
    size: false,
    color: false,
    stock: false,
    minStock: false,
    sku: false,
    price: false,
    boughtAt: false,
  });

  const knownColors = getKnownColors();

  const handleImageUpload = (event: React.ChangeEvent<HTMLInputElement>) => {
    if (event.target.files) {
      setImages([...images, ...Array.from(event.target.files)]);
    }
  };

  const handleSubmit = async () => {
    const errors = {
      size: !size,
      color: !color,
      stock: stock === '' || stock < 0,
      minStock: minStock === '' || minStock < 0,
      sku: false,
      price: price === '' || price < 0,
      boughtAt: boughtAt === '' || boughtAt < 0,
    };

    setFieldErrors(errors);

    if (Object.values(errors).some(Boolean)) {
      setError('All fields are required and must be valid.');
      return;
    }

    const isDuplicate = existingVariants.some(v => v.size === size && v.color === color);
    if (isDuplicate) {
      setError('This size and color combination already exists.');
      return;
    }

    const createVariantDto: CreateVariantDto = {
      productId: '',
      size,
      color,
      stock: Number(stock),
      minStock: Number(minStock),
      price: Number(price),
      boughtAt: Number(boughtAt),
      sku,
      images: [],
    };

    await onAdd(createVariantDto);
    onClose();
  };

  return (
    <Dialog open={open} onClose={onClose} fullWidth maxWidth="sm">
      <DialogTitle sx={{ mb: 2 }}>Add Variant</DialogTitle>
      <DialogContent>
        <Grid container spacing={2}>
          <Grid item xs={6}>
            <TextField
              label="Size"
              fullWidth
              value={size}
              onChange={(e) => setSize(e.target.value)}
              error={fieldErrors.size}
              helperText={fieldErrors.size ? "Size is required" : ""}
            />
          </Grid>

          <Grid item xs={6}>
            <FormControl fullWidth error={fieldErrors.color}>
              <InputLabel>Color</InputLabel>
              <Select
                value={color}
                label="Color"
                onChange={(e) => setColor(e.target.value)}
                renderValue={(selected) => (
                  <Box sx={{ display: 'flex', alignItems: 'center', gap: 1 }}>
                    <Chip
                      label={selected}
                      size="small"
                      sx={{
                        backgroundColor: getChipColor(selected),
                        color: isLightColor(getChipColor(selected)) ? '#000' : '#fff',
                        textTransform: 'capitalize',
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
          </Grid>

          <Grid item xs={6}>
            <TextField
              label="Stock"
              type="number"
              fullWidth
              value={stock}
              onChange={(e) => setStock(e.target.value === '' ? '' : Number(e.target.value))}
              error={fieldErrors.stock}
              helperText={fieldErrors.stock ? "Stock must be a non-negative number" : ""}
            />
          </Grid>

          <Grid item xs={6}>
            <TextField
              label="Min Stock"
              type="number"
              fullWidth
              value={minStock}
              onChange={(e) => setMinStock(e.target.value === '' ? '' : Number(e.target.value))}
              error={fieldErrors.minStock}
              helperText={fieldErrors.minStock ? "Min stock must be a non-negative number" : ""}
            />
          </Grid>

          <Grid item xs={6}>
            <TextField
              label="SKU (optional)"
              fullWidth
              value={sku}
              onChange={(e) => setSku(e.target.value)}
            />
          </Grid>

          <Grid item xs={6}>
            <TextField
              label="Price"
              type="number"
              fullWidth
              value={price}
              onChange={(e) => setPrice(e.target.value === '' ? '' : Number(e.target.value))}
              error={fieldErrors.price}
              helperText={fieldErrors.price ? "Price must be a non-negative number" : ""}
            />
          </Grid>

          <Grid item xs={6}>
            <TextField
              label="Bought At"
              type="number"
              fullWidth
              value={boughtAt}
              onChange={(e) => setBoughtAt(e.target.value === '' ? '' : Number(e.target.value))}
              error={fieldErrors.boughtAt}
              helperText={fieldErrors.boughtAt ? "Bought at must be a non-negative number" : ""}
            />
          </Grid>

          {error && (
            <Grid item xs={12}>
              <Typography color="error">{error}</Typography>
            </Grid>
          )}

          <Grid item xs={12}>
            <Typography variant="subtitle1">Upload Images:</Typography>
            <input
              id="upload"
              type="file"
              multiple
              accept="image/*"
              onChange={handleImageUpload}
              style={{ display: 'none' }}
            />
            <label htmlFor="upload" style={{ cursor: 'pointer' }}>
              <Box sx={{
                border: '1px dashed #ccc',
                padding: 2,
                textAlign: 'center',
                mt: 1,
              }}>
                <CloudUpload fontSize="large" />
                <Typography>Click to upload</Typography>
              </Box>
            </label>
          </Grid>
        </Grid>
      </DialogContent>

      <DialogActions>
        <Button onClick={onClose} color="secondary" variant="outlined">Cancel</Button>
        <Button onClick={handleSubmit} color="primary" variant="contained">Add</Button>
      </DialogActions>
    </Dialog>
  );
};

export default AddVariantForm;
