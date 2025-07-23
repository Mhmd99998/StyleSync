export interface BulkProductCsvRow {
  productName: string;
  description: string;
  isArchived: string; // Will parse to boolean later
  sku: string;
  variantSize: string;
  variantColor: string;
  variantPrice: string;
  variantBoughtAt: string;
  variantStock: string;
  variantMinStock: string;
  variantSku?: string;
  categoryNames: string; // comma-separated string like "Shoes,Men"
}
