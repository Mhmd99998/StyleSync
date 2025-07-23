import React, { useEffect, useState } from "react";
import {
  Container, Typography, Box, Paper, CircularProgress,
  Autocomplete, TextField, Select, MenuItem, FormControl, InputLabel,
} from "@mui/material";
import { LocalizationProvider } from "@mui/x-date-pickers/LocalizationProvider";
import { AdapterDayjs } from "@mui/x-date-pickers/AdapterDayjs";
import { DatePicker } from "@mui/x-date-pickers/DatePicker";
import dayjs, { Dayjs } from "dayjs";
import {
  ResponsiveContainer, BarChart, Bar, CartesianGrid, XAxis, YAxis, Tooltip, LineChart, Line
} from "recharts";

import ProductService from "../../services/ProductService";
import AnalyticsService from "../../services/AnalyticsService";
import { AdminProductDto } from "../../models/Product";

const COLORS = ["#0088FE", "#00C49F", "#FFBB28", "#FF8042", "#A28CF6", "#FF6699", "#33CCCC"];
const MONTH_NAMES = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

const ProductAnalytics: React.FC = () => {
  const [allProducts, setAllProducts] = useState<AdminProductDto[]>([]);
  const [selectedProducts, setSelectedProducts] = useState<AdminProductDto[]>([]);
  const [period, setPeriod] = useState("year");
  const [customStartDate, setCustomStartDate] = useState<Dayjs | null>(null);
  const [customEndDate, setCustomEndDate] = useState<Dayjs | null>(null);
  const [loading, setLoading] = useState(false);

  const [analyticsData, setAnalyticsData] = useState<any[]>([]);

  const buildMergedChartData = () => {
    const monthMap = new Map<string, any>();

    analyticsData.forEach((product, index) => {
      const monthly = product.monthlyBreakdown || [];
      monthly.forEach((entry: any) => {
        const label = `${MONTH_NAMES[entry.month - 1]} ${entry.year}`;
        if (!monthMap.has(label)) {
          monthMap.set(label, { label });
        }

        const monthData = monthMap.get(label);
        monthData[`revenue_${product.productId}`] = entry.revenue;
        monthData[`profit_${product.productId}`] = entry.grossProfit;
      });
    });

    // Sort chronologically
    const sorted = Array.from(monthMap.values()).sort((a, b) =>
      dayjs(a.label, "MMM YYYY").isAfter(dayjs(b.label, "MMM YYYY")) ? 1 : -1
    );

    return sorted;
  };

  useEffect(() => {
    const fetchAllProducts = async () => {
      const pageSize = 100; // adjust if needed
      let pageNumber = 1;
      let allProducts: AdminProductDto[] = [];
      let hasMore = true;

      try {
        while (hasMore) {
          const response = await ProductService.getAllProductsAdmin(pageNumber, pageSize);
          const products = response.products;
          allProducts = [...allProducts, ...products];

          // Determine if there's another page
          const totalCount = response.products.length || 0;
          hasMore = allProducts.length < totalCount;
          pageNumber++;
        }

        setAllProducts(allProducts);
      } catch (err) {
        console.error("Error loading products:", err);
      }
    };

    fetchAllProducts();
  }, []);

  const fetchAnalytics = async () => {
    if (selectedProducts.length === 0) return;
    setLoading(true);
    try {
      const ids = selectedProducts.map((p) => p.productId);
      const periodString =
        period === "custom" && customStartDate && customEndDate
          ? `${customStartDate.format("YYYY-MM-DD")}_to_${customEndDate.format("YYYY-MM-DD")}`
          : period;

      const data = await AnalyticsService.getProductAnalytics({
        productIds: ids, period: periodString
      });
      setAnalyticsData(data);
    } catch (error) {
      console.error("Error fetching analytics:", error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if ((period !== "custom") || (customStartDate && customEndDate)) {
      fetchAnalytics();
    }
  }, [selectedProducts, period, customStartDate, customEndDate]);

  const handlePeriodChange = (event: any) => {
    setPeriod(event.target.value);
    if (event.target.value !== "custom") {
      setCustomStartDate(null);
      setCustomEndDate(null);
    }
  };

  // const formatChartData = (product: any) =>
  //   product.monthlyBreakdown?.map((m: any) => ({
  //     ...m,
  //     label: `${MONTH_NAMES[m.month - 1]} ${m.year}`,
  //   })) || [];

  const mergedChartData = buildMergedChartData();

  return (
    <LocalizationProvider dateAdapter={AdapterDayjs}>
      <Container maxWidth="xl" sx={{ py: 6 }}>
        <Typography variant="h4" fontWeight="bold" gutterBottom>
          Product Analytics
        </Typography>

        {/* Controls */}
        <Box display="flex" flexWrap="wrap" gap={3} sx={{ mb: 4 }}>
          <Autocomplete
            multiple
            options={allProducts}
            getOptionLabel={(option) => option.name}
            value={selectedProducts}
            onChange={(e, value) => setSelectedProducts(value)}
            renderInput={(params) => (
              <TextField {...params} label="Select Products" placeholder="Search products" />
            )}
            sx={{ minWidth: 600 }}
          />

          <FormControl sx={{ minWidth: 150 }}>
            <InputLabel id="period-label">Period</InputLabel>
            <Select labelId="period-label" value={period} onChange={handlePeriodChange} label="Period">
              <MenuItem value="month">Last Month</MenuItem>
              <MenuItem value="year">Last Year</MenuItem>
              <MenuItem value="custom">Custom</MenuItem>
            </Select>
          </FormControl>

          {period === "custom" && (
            <>
              <DatePicker
                label="Start Date"
                value={customStartDate}
                onChange={(newDate) => setCustomStartDate(newDate)}
                maxDate={dayjs()}
              />
              <DatePicker
                label="End Date"
                value={customEndDate}
                onChange={(newDate) => setCustomEndDate(newDate)}
                minDate={customStartDate || undefined}
                maxDate={dayjs()}
              />
            </>
          )}
        </Box>

        {/* Loader */}
        {loading ? (
          <Box textAlign="center" mt={10}>
            <CircularProgress />
            <Typography mt={2}>Loading analytics...</Typography>
          </Box>
        ) : (
          <>
            <Box display="flex" flexWrap="wrap" gap={3} sx={{ mb: 4 }}>
              <Paper
                sx={{
                  p: 3,
                  flex: "1 1 250px",
                  textAlign: "center",
                  minWidth: { xs: "100%", sm: 250, md: 300 },
                }}
                elevation={3}
              >
                <Typography variant="subtitle1" gutterBottom>
                  Total Revenue
                </Typography>
                <Typography variant="h6" fontWeight="bold">
                  ${analyticsData.reduce((sum, p) => sum + p.totalRevenue, 0).toLocaleString()}
                </Typography>
              </Paper>

              <Paper
                sx={{
                  p: 3,
                  flex: "1 1 250px",
                  textAlign: "center",
                  minWidth: { xs: "100%", sm: 250, md: 300 },
                }}
                elevation={3}
              >
                <Typography variant="subtitle1" gutterBottom>
                  Total Profit
                </Typography>
                <Typography
                  variant="h6"
                  fontWeight="bold"
                  sx={{
                    color:
                      analyticsData.reduce((sum, p) => sum + p.grossProfit, 0) >= 0
                        ? "success.main"
                        : "error.main",
                  }}
                >
                  ${analyticsData.reduce((sum, p) => sum + p.grossProfit, 0).toLocaleString()}
                </Typography>
              </Paper>

              <Paper
                sx={{
                  p: 3,
                  flex: "1 1 250px",
                  textAlign: "center",
                  minWidth: { xs: "100%", sm: 250, md: 300 },
                }}
                elevation={3}
              >
                <Typography variant="subtitle1" gutterBottom>
                  Units Sold
                </Typography>
                <Typography variant="h6" fontWeight="bold">
                  {analyticsData.reduce((sum, p) => sum + p.unitsSold, 0).toLocaleString()}
                </Typography>
              </Paper>
            </Box>

            {/* Combined Monthly Revenue Line Chart */}
            <Paper elevation={3} sx={{ p: 3, mb: 4 }}>
              <Typography variant="h6" gutterBottom>
                Monthly Revenue (All Products)
              </Typography>
              <ResponsiveContainer width="100%" height={350}>
                <LineChart data={mergedChartData}>
                  <CartesianGrid strokeDasharray="3 3" />
                  <XAxis dataKey="label" />
                  <YAxis />
                  <Tooltip formatter={(value: number) => `$${value.toLocaleString()}`} />
                  {analyticsData.map((product, index) => (
                    <Line
                      key={product.productId}
                      type="monotone"
                      dataKey={`revenue_${product.productId}`}
                      name={product.productName}
                      stroke={COLORS[index % COLORS.length]}
                      strokeWidth={3}
                      dot
                    />
                  ))}
                </LineChart>
              </ResponsiveContainer>
            </Paper>

            {/* Combined Monthly Profit Bar Chart */}
            <Paper elevation={3} sx={{ p: 3 }}>
              <Typography variant="h6" gutterBottom>
                Monthly Profit (All Products)
              </Typography>
              <ResponsiveContainer width="100%" height={350}>
                <BarChart data={mergedChartData}>
                  <CartesianGrid strokeDasharray="3 3" />
                  <XAxis dataKey="label" />
                  <YAxis />
                  <Tooltip formatter={(value: number) => `$${value.toLocaleString()}`} />
                  {analyticsData.map((product, index) => (
                    <Bar
                      key={product.productId}
                      dataKey={`profit_${product.productId}`}
                      name={product.productName}
                      fill={COLORS[index % COLORS.length]}
                    />
                  ))}
                </BarChart>
              </ResponsiveContainer>
            </Paper>
          </>
        )}
      </Container>
    </LocalizationProvider>
  );
};

export default ProductAnalytics;
