import React, { useEffect, useState } from "react";
import {
  LineChart, Line, CartesianGrid, XAxis, YAxis, Tooltip,
  BarChart, Bar, ResponsiveContainer, PieChart, Pie, Cell, LabelList
} from "recharts";
import {
  Container, Typography, Grid, Paper, CircularProgress,
  FormControl, InputLabel, Select, MenuItem, SelectChangeEvent, Box, Fade
} from "@mui/material";
import { DatePicker } from "@mui/x-date-pickers/DatePicker";
import { LocalizationProvider } from "@mui/x-date-pickers/LocalizationProvider";
import { AdapterDayjs } from "@mui/x-date-pickers/AdapterDayjs";
import dayjs, { Dayjs } from "dayjs";

import { MonthlyRevenueDto, TopProductDto, MonthlyGrossProfitDto } from "../../models/Analytics";
import AnalyticsService from "../../services/AnalyticsService";
import UnderlinedButton from "../shared/UnderlinedButton";
import ArrowBackIosNewIcon from "@mui/icons-material/ArrowBackIosNew";
import { useNavigate } from "react-router-dom";

const COLORS = ["#0088FE", "#00C49F", "#FFBB28", "#FF8042", "#A28CF6", "#FF6699", "#33CCCC"];
const MONTH_NAMES = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

const Analytics: React.FC = () => {
  const navigate = useNavigate();

  const [monthlyRevenue, setMonthlyRevenue] = useState<MonthlyRevenueDto[]>([]);
  const [grossProfitData, setGrossProfitData] = useState<MonthlyGrossProfitDto[]>([]);
  const [topProducts, setTopProducts] = useState<TopProductDto[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedPeriod, setSelectedPeriod] = useState("year");

  const [customStartDate, setCustomStartDate] = useState<Dayjs | null>(null);
  const [customEndDate, setCustomEndDate] = useState<Dayjs | null>(null);

  const fetchAnalytics = async (period: string) => {
    setLoading(true);
    try {
      const [revenueData, topProductsData, profitData] = await Promise.all([
        AnalyticsService.getMonthlyRevenue(period),
        AnalyticsService.getTopSellingProducts(period, 10),
        AnalyticsService.getMonthlyGrossProfit(period),
      ]);

      setMonthlyRevenue(revenueData);
      setTopProducts(topProductsData);
      setGrossProfitData(profitData);
    } catch (error) {
      console.error(error);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    if (selectedPeriod !== "custom") {
      fetchAnalytics(selectedPeriod);
    }
  }, [selectedPeriod]);

  useEffect(() => {
    if (selectedPeriod === "custom" && customStartDate && customEndDate) {
      const periodString = `${customStartDate.format("YYYY-MM-DD")}_to_${customEndDate.format("YYYY-MM-DD")}`;
      fetchAnalytics(periodString);
    }
  }, [customStartDate, customEndDate, selectedPeriod]);

  const handlePeriodChange = (event: SelectChangeEvent) => {
    const value = event.target.value;
    setSelectedPeriod(value);
    if (value !== "custom") {
      setCustomStartDate(null);
      setCustomEndDate(null);
    }
  };

  const formattedMonthlyRevenue = monthlyRevenue.map((entry) => ({
    ...entry,
    label: `${MONTH_NAMES[entry.month - 1]} ${entry.year}`,
  }));

  const totalRevenue = monthlyRevenue.reduce((sum, month) => sum + month.revenue, 0);
  const totalGrossProfit = grossProfitData.reduce((sum, month) => sum + month.grossProfit, 0);
  const totalUnitsSold = topProducts.reduce((sum, product) => sum + product.unitsSold, 0);

  if (loading) {
    return (
      <Container maxWidth="xl" sx={{ textAlign: "center", mt: 20 }}>
        <CircularProgress />
        <Typography variant="h6" mt={2}>Loading analytics...</Typography>
      </Container>
    );
  }

  return (
    <LocalizationProvider dateAdapter={AdapterDayjs}>
      <Container maxWidth="lg" sx={{ py: 6 }}>
        <UnderlinedButton
          startIcon={<ArrowBackIosNewIcon />}
          onClick={() => navigate("/admin")}
          sx={{ mb: 2 }}
        >
          BACK
        </UnderlinedButton>

        <Typography variant="h4" fontWeight="bold" gutterBottom>
          Analytics Dashboard
        </Typography>

        {/* Period Selector */}
        <FormControl sx={{ mb: 2, minWidth: 200 }}>
          <InputLabel id="period-label">Period</InputLabel>
          <Select
            labelId="period-label"
            value={selectedPeriod}
            label="Period"
            onChange={handlePeriodChange}
          >
            <MenuItem value="month">Last Month</MenuItem>
            <MenuItem value="year">Last Year</MenuItem>
            <MenuItem value="custom">Custom</MenuItem>
          </Select>
        </FormControl>

        {/* Custom Date Pickers */}
        {selectedPeriod === "custom" && (
          <Box display="flex" gap={2} sx={{ mb: 4 }}>
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
          </Box>
        )}

        {/* Summary Cards */}
        <Grid container spacing={2} sx={{ mb: 4 }}>
          <Grid item xs={12} md={4}>
            <Paper elevation={3} sx={{ p: 3, textAlign: "center" }}>
              <Typography variant="subtitle1" color="textSecondary">
                Total Revenue
              </Typography>
              <Typography variant="h5" fontWeight="bold">
                ${totalRevenue.toLocaleString()}
              </Typography>
            </Paper>
          </Grid>
          <Grid item xs={12} md={4}>
            <Paper elevation={3} sx={{ p: 3, textAlign: "center" }}>
              <Typography variant="subtitle1" color="textSecondary">
                Gross Profit
              </Typography>
              <Typography variant="h5" fontWeight="bold" color="green">
                ${totalGrossProfit.toLocaleString()}
              </Typography>
            </Paper>
          </Grid>
          <Grid item xs={12} md={4}>
            <Paper elevation={3} sx={{ p: 3, textAlign: "center" }}>
              <Typography variant="subtitle1" color="textSecondary">
                Total Units Sold
              </Typography>
              <Typography variant="h5" fontWeight="bold">
                {totalUnitsSold.toLocaleString()}
              </Typography>
            </Paper>
          </Grid>
        </Grid>

        {/* Charts */}
        <Grid container spacing={4}>
          {/* Line Chart: Monthly Revenue */}
          <Grid item xs={12}>
            <Fade in timeout={600}>
              <Paper elevation={3} sx={{ p: 3 }}>
                <Typography variant="h6" gutterBottom>
                  Monthly Revenue
                </Typography>
                <ResponsiveContainer width="100%" height={350}>
                  <LineChart data={formattedMonthlyRevenue}>
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis dataKey="label" />
                    <YAxis />
                    <Tooltip formatter={(value: number) => `$${value.toLocaleString()}`} />
                    <Line
                      type="monotone"
                      dataKey="revenue"
                      stroke="#8884d8"
                      strokeWidth={3}
                      dot={{ r: 4 }}
                      activeDot={{ r: 6 }}
                      animationDuration={500}
                    />
                  </LineChart>
                </ResponsiveContainer>
              </Paper>
            </Fade>
          </Grid>

          {/* Bar Chart: Top Selling Products */}
          <Grid item xs={12}>
            <Fade in timeout={700}>
              <Paper elevation={3} sx={{ p: 3 }}>
                <Typography variant="h6" gutterBottom>
                  Top Selling Products
                </Typography>
                <ResponsiveContainer width="100%" height={350}>
                  <BarChart data={topProducts}>
                    <CartesianGrid strokeDasharray="3 3" />
                    <XAxis dataKey="productName" />
                    <YAxis />
                    <Tooltip formatter={(value: number) => value.toLocaleString()} />
                    <Bar dataKey="unitsSold" fill="#82ca9d">
                      <LabelList dataKey="unitsSold" position="top" />
                    </Bar>
                  </BarChart>
                </ResponsiveContainer>
              </Paper>
            </Fade>
          </Grid>

          {/* Pie Chart: Revenue Distribution */}
          <Grid item xs={12}>
            <Fade in timeout={800}>
              <Paper elevation={3} sx={{ p: 3 }}>
                <Typography variant="h6" gutterBottom>
                  Revenue Distribution
                </Typography>
                <ResponsiveContainer width="100%" height={400}>
                  <PieChart>
                    <Pie
                      data={topProducts}
                      dataKey="totalRevenue"
                      nameKey="productName"
                      cx="50%"
                      cy="50%"
                      outerRadius={150}
                      label={({ name }) => name}
                      isAnimationActive
                    >
                      {topProducts.map((entry, index) => (
                        <Cell key={`cell-${index}`} fill={COLORS[index % COLORS.length]} />
                      ))}
                    </Pie>
                    <Tooltip formatter={(value: number) => `$${value.toLocaleString()}`} />
                  </PieChart>
                </ResponsiveContainer>
              </Paper>
            </Fade>
          </Grid>
        </Grid>
      </Container>
    </LocalizationProvider>
  );
};

export default Analytics;
