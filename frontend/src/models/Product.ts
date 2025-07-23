import { CategoryDto } from "./Category";
import { AdminVariantDto, VariantDto } from "./Variant";

export interface ProductDto {
  productId: string;
  name: string;
  description: string;
  isArchived: boolean;
  sku: string;
  variants: VariantDto[];
  categories: CategoryDto[];
}

export interface AdminProductDto {
  productId: string;
  name: string;
  description: string;
  isArchived: boolean;
  sku: string;
  variants: AdminVariantDto[];
  categories: CategoryDto[];
}

export interface ProductWithStock extends AdminProductDto {
  totalStock: number;
}

export interface CreateProductDto {
  name: string;
  description: string;
  isArchived: boolean;
  sku: string;
  variants?: AdminVariantDto[];
  categories: CategoryDto[];
}

export interface UpdateProductDto {
  name: string;
  description: string;
  isArchived: boolean;
  sku: string;
  categories: CategoryDto[];
}

export interface PaginatedProductResponse {
  totalProducts: number;
  products: ProductDto[];
}

export interface AdminPaginatedProductResponse {
  totalProducts: number;
  products: AdminProductDto[];
}

export interface ProductFilterDto {
  searchTerm?: string;
  categoryIds?: string[];
  minPrice?: number;
  maxPrice?: number;
  sortBy?: 'name' | 'createdAt'; 
  sortDirection?: 'asc' | 'desc';
  sizes?: string[];
  colors?: string[];
  isArchived?: boolean;
}
