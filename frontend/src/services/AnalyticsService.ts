import {
  MonthlyGrossProfitDto,
  MonthlyRevenueDto,
  ProductAnalyticsGroupDto,
  ProductAnalyticsRequest,
  ProductSalesStatsDto,
  TopProductDto,
} from "../models/Analytics";
import axiosInstance from "./axiosInstance";

const API_URL = "/analytics";

class AnalyticsService {
  public async getProductSalesStats(
    productId: string,
    period: string | "year"
  ): Promise<ProductSalesStatsDto> {
    try {
      const response = await axiosInstance.get(
        `${API_URL}/product-sales/${productId}`,
        { params: { period } }
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve product sales stats");
    }
  }

  public async getTopSellingProducts(
    period: string,
    n: number
  ): Promise<TopProductDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/top-products`, {
        params: { period: period, n: n },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve top product stats");
    }
  }

  public async getMonthlyRevenue(period: string): Promise<MonthlyRevenueDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/monthly-revenue`, {
        params: { period },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve monthly revenue stats");
    }
  }

  public async getMonthlyGrossProfit(
    period: string
  ): Promise<MonthlyGrossProfitDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/monthly-gp`, {
        params: { period },
      });
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve monthly gross profit data");
    }
  }

  public async getProductAnalytics(
    productAnalyticsRequest: ProductAnalyticsRequest
  ): Promise<ProductAnalyticsGroupDto[]> {
    try {
      const response = await axiosInstance.post(
        `${API_URL}/product-analytics`,
        productAnalyticsRequest
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve product analytics data");
    }
  }
}

export default new AnalyticsService();
