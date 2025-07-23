import {
  AdminPaginatedProductResponse,
  AdminProductDto,
  CreateProductDto,
  PaginatedProductResponse,
  ProductDto,
  ProductFilterDto,
  UpdateProductDto,
} from "../models/Product";
import axiosInstance from "./axiosInstance";

const API_URL = "/products";

class ProductService {
  public async getAllProducts(
    pageNumber: number = 1,
    pageSize: number = 20,
    filters: ProductFilterDto = {}
  ): Promise<PaginatedProductResponse> {
    try {
      const response = await axiosInstance.get(API_URL, {
        params: {
          pageNumber,
          pageSize,
          ...filters,
          colors: filters.colors?.join(","),
          sizes: filters.sizes?.join(","),
          categoryIds: filters.categoryIds?.join(","),
        },
      });

      return response.data;
    } catch (error) {
      console.error("Error fetching products", error);
      throw new Error("Failed to fetch products");
    }
  }

  public async getAllProductsAdmin(
    pageNumber: number = 1,
    pageSize: number = 20,
    filters: ProductFilterDto = {}
  ): Promise<AdminPaginatedProductResponse> {
    try {
      const response = await axiosInstance.get(`${API_URL}/admin`, {
        params: {
          pageNumber,
          pageSize,
          ...filters,
          colors: filters.colors?.join(","),
          sizes: filters.sizes?.join(","),
          categoryIds: filters.categoryIds?.join(","),
        },
      });

      return response.data;
    } catch (error) {
      console.error("Error fetching products", error);
      throw new Error("Failed to fetch products");
    }
  }

  public async getProductById(productId: string): Promise<ProductDto> {
    try {
      const response = await axiosInstance.get(`${API_URL}/${productId}`);
      return response.data;
    } catch (error) {
      console.error("Error fetching product", error);
      throw new Error("Failed to fetch product");
    }
  }

  public async getProductByIdAdmin(
    productId: string
  ): Promise<AdminProductDto> {
    try {
      const response = await axiosInstance.get(`${API_URL}/admin/${productId}`);
      return response.data;
    } catch (error) {
      console.error("Error fetching product", error);
      throw new Error("Failed to fetch product");
    }
  }

  public async getProductByVariantId(variantId: string): Promise<ProductDto> {
    try {
      const response = await axiosInstance.get(
        `${API_URL}/variant/${variantId}`
      );
      return response.data;
    } catch (error) {
      console.error("Error fetching product for variant", error);
      throw new Error("Failed to get product by variant ID");
    }
  }

  public async createProduct(
    createProductDto: CreateProductDto
  ): Promise<ProductDto> {
    try {
      const response = await axiosInstance.post(API_URL, createProductDto);
      return response.data;
    } catch (error) {
      throw new Error("Failed to create product");
    }
  }

  public async updateProduct(
    productId: string,
    updatedProduct: UpdateProductDto
  ): Promise<UpdateProductDto> {
    try {
      const response = await axiosInstance.put(
        `${API_URL}/${productId}`,
        updatedProduct
      );
      return response.data;
    } catch (error) {
      console.error("Error updating product", error);
      throw new Error(`Failed to update product: ${productId}`);
    }
  }

  public async deleteProduct(productId: string): Promise<void> {
    try {
      await axiosInstance.delete(`${API_URL}/${productId}`);
    } catch (error) {
      console.error("Error deleting product", error);
      throw new Error("Failed to delete product");
    }
  }

  public async search(keyword: string): Promise<ProductDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/search`, {
        params: { query: keyword },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to fetch products");
    }
  }
}

export default new ProductService();
