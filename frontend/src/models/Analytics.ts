export interface MonthlyRevenueDto {
  year: number;
  month: number;
  revenue: number;
}

export interface VariantSalesDto {
  variantId: string;
  size: string;
  color: string;
  unitsSold: number;
  revenue: number;
  price: number;
  profit: number;
}

export interface ProductSalesStatsDto {
  unitsSold: number;
  totalRevenue: number;
  topVariants: VariantSalesDto[];
}

export interface TopProductDto {
  productId: string;
  productName: string;
  unitsSold: number;
  totalRevenue: number;
}

export interface MonthlyGrossProfitDto {
  year: number;
  month: number;
  revenue: number;
  cost: number;
  grossProfit: number;
}

export interface MonthlyBreakdownDto {
  year: number;
  month: number;
  revenue: number;
  grossProfit: number;
}

export interface ProductAnalyticsGroupDto {
  productId: string;
  productName: string;
  unitsSold: number;
  totalRevenue: number;
  totalCost: number;
  grossProfit: number;

  variantBreakdown: VariantSalesDto[];
  monthlyBreakdown: MonthlyBreakdownDto[];
}

export interface ProductAnalyticsRequest {
  productIds: string[];
  period: string;
}
