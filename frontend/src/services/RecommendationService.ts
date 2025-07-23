import { ProductDto } from "../models/Product";
import axiosInstance from "./axiosInstance";

const API_URL = "/recommend";

class RecommendationService {
  public async recommend(userId: string, count: number): Promise<ProductDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/${userId}`, {
        params: { n: count },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to fetch recommended products");
    }
  }

  public async recommendBase(
    productId: string,
    count: number
  ): Promise<ProductDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/base/${productId}`, {
        params: { n: count },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to fetch base recommended products");
    }
  }
}

export default new RecommendationService();
