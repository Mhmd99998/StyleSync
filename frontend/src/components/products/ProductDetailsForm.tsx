import React from 'react';
import { Box } from '@mui/material';
import CustomTextField from '../shared/CustomTextField';
import { AdminProductDto } from '../../models/Product';

interface Props {
  product: AdminProductDto;
  onChange: (field: keyof AdminProductDto, value: string | boolean) => void;
  isSaving: boolean;
}

const ProductDetailsForm: React.FC<Props> = ({ product, onChange, isSaving }) => (
  <Box sx={{ mb: 2 }}>
    <CustomTextField
      label="Product Name"
      fullWidth
      value={product.name}
      onChange={value => onChange("name", value)}
      disabled={isSaving}
    />
    <CustomTextField
      label="Product SKU"
      fullWidth
      value={product.sku}
      onChange={value => onChange("sku", value)}
      disabled={isSaving}
      sx={{ mt: 2 }}
    />
    <CustomTextField
      label="Description"
      fullWidth
      multiline
      rows={3}
      value={product.description}
      onChange={value => onChange("description", value)}
      disabled={isSaving}
      sx={{ mt: 2 }}
    />
  </Box>
);

export default ProductDetailsForm;
