import React, { useRef, useState } from 'react';
import {
  Box,
  Button,
  Typography,
  Stack,
  Alert,
  CircularProgress,
  IconButton,
} from '@mui/material';
import UploadFileIcon from '@mui/icons-material/UploadFile';
import CloseIcon from '@mui/icons-material/Close';
import Papa from 'papaparse';
import { BulkProductCsvRow } from '../../models/BulkUploadCsvRow';
import { transformAndValidate } from '../../utils/transformAndValidate';
import { GridColDef } from '@mui/x-data-grid';
import { CreateProductDto } from '../../models/Product';
import VariantService from '../../services/VariantService';
import ProductService from '../../services/ProductService';
import UniversalGrid from '../shared/UniveralGrid';
import CategoryService from '../../services/CategoryService';
import ArrowBackIosNewIcon from '@mui/icons-material/ArrowBackIosNew';
import { toast } from 'material-react-toastify';
import UnderlinedButton from '../shared/UnderlinedButton';
import { useNavigate } from 'react-router-dom';

const BulkProductUpload: React.FC = () => {
  const fileInputRef = useRef<HTMLInputElement>(null);
  const navigate = useNavigate();

  const [previewRows, setPreviewRows] = useState<BulkProductCsvRow[]>([]);
  const [parsedProducts, setParsedProducts] = useState<CreateProductDto[]>([]);
  const [validationErrors, setValidationErrors] = useState<string[]>([]);
  const [showPreview, setShowPreview] = useState(false);
  const [loading, setLoading] = useState(false);
  const [uploadStatus, setUploadStatus] = useState<string | null>(null);
  const [fileName, setFileName] = useState<string | null>(null);
  const [isFileUploaded, setIsFileUploaded] = useState(false);

  const handleButtonClick = () => fileInputRef.current?.click();

  const handleFileChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    const file = event.target.files?.[0];
    if (file) {
      handleFileUpload(file);
      event.target.value = '';
    }
  };

  const handleFileUpload = (file: File) => {
    setFileName(file.name);
    setIsFileUploaded(true);
    Papa.parse<BulkProductCsvRow>(file, {
      header: true,
      skipEmptyLines: true,
      complete: (results) => {
        if (results.errors.length > 0) {
          setValidationErrors(results.errors.map((e) => e.message));
          setShowPreview(false);
          return;
        }

        const rows = results.data;
        const parsed = transformAndValidate(rows);

        if (!parsed.isValid) {
          setValidationErrors(parsed.errors);
          setShowPreview(false);
        } else {
          setParsedProducts(parsed.products);
          setPreviewRows(rows);
          setValidationErrors([]);
          setShowPreview(true);
        }
      },
    });
  };

  const handleUploadToServer = async () => {
    setLoading(true);
    setUploadStatus(null);

    try {
      for (const product of parsedProducts) {
        const updatedCategories = await Promise.all(
          product.categories.map(async (category) => {
            const categoryData = await CategoryService.getCategoryByName(category.name);
            return {
              categoryId: categoryData ? categoryData.categoryId : '',
              name: category.name,
            };
          })
        );

        const createdProduct = await ProductService.createProduct({
          name: product.name,
          description: product.description,
          sku: product.sku,
          isArchived: product.isArchived,
          categories: updatedCategories,
        });

        const variants = product.variants || [];
        for (const variant of variants) {
          await VariantService.createVariant({
            productId: createdProduct.productId,
            size: variant.size,
            color: variant.color,
            price: variant.price,
            boughtAt: variant.boughtAt,
            stock: variant.stock,
            minStock: variant.minStock,
            sku: variant.sku,
            images: [],
          });
        }
      }

      setUploadStatus('Upload successful!');
      setParsedProducts([]);
      setShowPreview(false);
      setIsFileUploaded(false);
      setFileName(null);
      toast.success("Products uploaded successfully!");
    } catch (error) {
      toast.error("Something went wrong!");
      setUploadStatus('Upload failed. Please try again.');
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  const handleRemoveFile = () => {
    setIsFileUploaded(false);
    setFileName(null);
  };

  const columns: GridColDef[] = [
    { field: 'productName', headerName: 'Product Name', flex: 1 },
    { field: 'description', headerName: 'Description', flex: 2 },
    { field: 'sku', headerName: 'Product SKU', flex: 1 },
    { field: 'variantSize', headerName: 'Size', flex: 1 },
    { field: 'variantColor', headerName: 'Color', flex: 1 },
    { field: 'variantPrice', headerName: 'Price', flex: 1 },
    { field: 'variantBoughtAt', headerName: 'Bought At', flex: 1 },
    { field: 'variantStock', headerName: 'Stock', flex: 1 },
    { field: 'variantMinStock', headerName: 'Min Stock', flex: 1 },
    { field: 'variantSku', headerName: 'Variant SKU', flex: 1 },
    { field: 'categoryNames', headerName: 'Categories', flex: 2 },
    { field: 'isArchived', headerName: 'Archived', flex: 1 },
  ];

  const handleDownloadTemplate = () => {
    const headerRow = [
      'productName',
      'description',
      'isArchived',
      'sku',
      'variantSize',
      'variantColor',
      'variantPrice',
      'variantBoughtAt',
      'variantStock',
      'variantMinStock',
      'variantSku',
      'categoryNames',
    ];

    const exampleRow = [
      'T-Shirt',
      'A cool cotton t-shirt',
      'false',
      'TSHIRT001',
      'M',
      'Red',
      '19.99',
      '12.99',
      '100',
      '20',
      'TSHIRT001-M-RED',
      '"Men,Casual"',
    ];

    const csvContent =
      [headerRow.join(','), exampleRow.join(',')].join('\n');

    const blob = new Blob([csvContent], { type: 'text/csv;charset=utf-8;' });
    const url = URL.createObjectURL(blob);

    const link = document.createElement('a');
    link.href = url;
    link.setAttribute('download', 'product_template.csv');
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <Box sx={{ mt: 10, px: 2, maxWidth: 1400, mx: 'auto' }}>
      {/* Top Bar: Back + Upload + FileName */}
      <Stack direction="row" spacing={2} alignItems="center" flexWrap="wrap">
        <UnderlinedButton
          startIcon={<ArrowBackIosNewIcon />}
          onClick={() => navigate("/admin")}
        >
          BACK
        </UnderlinedButton>

        <Button
          variant="contained"
          startIcon={<UploadFileIcon />}
          onClick={handleButtonClick}
          disabled={isFileUploaded}
        >
          UPLOAD CSV
        </Button>

        {isFileUploaded && fileName && (
          <Stack direction="row" alignItems="center" spacing={1}>
            <Typography variant="body2" color="text.secondary">
              {fileName}
            </Typography>
            <IconButton onClick={handleRemoveFile} size="small">
              <CloseIcon fontSize="small" />
            </IconButton>
          </Stack>
        )}

        <input
          type="file"
          accept=".csv"
          style={{ display: 'none' }}
          ref={fileInputRef}
          onChange={handleFileChange}
        />
      </Stack>

      {/* Description */}
      <Typography variant="body2" color="text.secondary" sx={{ mt: 2, maxWidth: 800 }}>
        Upload a CSV file containing both product and variant data. Each row should represent a single variant,
        and duplicate the product information for each variant. Example: A T-Shirt with 3 sizes (S, M, L) should
        appear in 3 rows with the same product name and SKU, but different variant details.
      </Typography>

      {/* Validation Errors */}
      {validationErrors.length > 0 && (
        <Stack spacing={1} sx={{ mt: 2 }}>
          {validationErrors.map((err, idx) => (
            <Alert severity="error" key={idx}>{err}</Alert>
          ))}
        </Stack>
      )}

      {/* Upload and Download Buttons  */}
      <Stack direction={{ xs: 'column', sm: 'row' }} spacing={2} sx={{ mt: 2 }}>
        <UnderlinedButton
          onClick={handleDownloadTemplate}
        >
          DOWNLOAD TEMPLATE
        </UnderlinedButton>
        {showPreview && (

          <Button
            variant="contained"
            color="success"
            onClick={handleUploadToServer}
            disabled={loading}
          >
            {loading ? <CircularProgress size={24} /> : 'CONFIRM AND UPLOAD'}
          </Button>
        )}
      </Stack>

      {/* Preview */}
      {showPreview && (
        <>
          <Typography variant="h6" sx={{ my: 2 }}>
            Preview Data
          </Typography>
          <UniversalGrid
            rows={previewRows}
            columns={columns}
            getRowId={(row) => `${row.sku}-${row.variantSize}-${row.variantColor}`}
          />
        </>
      )}

      {/* Upload Status */}
      {uploadStatus && (
        <Alert
          severity={uploadStatus.includes('failed') ? 'error' : 'success'}
          sx={{ mt: 3 }}
        >
          {uploadStatus}
        </Alert>
      )}
    </Box>
  );
};

export default BulkProductUpload;
