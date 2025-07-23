import { ImageDto } from "./Image";

export interface Variant {
  variantId: string;
  productId: string;
  size: string;
  color: string;
  price: number;
  boughtAt: number;
  onSale?: number;
  stock: number;
  sku?: string;
}

export interface VariantDto {
  variantId: string;
  productId: string;
  size: string;
  color: string;
  price: number;
  boughtAt: number;
  onSale: number;
  stock: number;
  minStock: number;
  sku?: string;
  images: ImageDto[];
}

export interface AdminVariantDto {
  variantId: string;
  productId: string;
  size: string;
  color: string;
  price: number;
  boughtAt: number;
  onSale?: number;
  stock: number;
  minStock: number;
  sku?: string;
  images: ImageDto[];
}

export interface UpdateVariantDto {
  variantId: string;
  productId: string;
  size: string;
  color: string;
  price: number;
  boughtAt: number;
  onSale?: number;
  stock: number;
  minStock: number;
  sku: string;
}

export interface CreateVariantDto {
  productId: string;
  size: string;
  color: string;
  price: number;
  boughtAt: number;
  onSale?: number;
  stock: number;
  minStock: number;
  sku?: string;
  images?: File[];
}
