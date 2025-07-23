import {
  AddItemToOrderDto,
  CreateOrderDto,
  OrderDto,
  UpdateOrderStatusDto,
} from "../models/Order";
import axiosInstance from "./axiosInstance";

const API_URL = "/orders";

class OrderService {
  async getAllOrders(): Promise<OrderDto[]> {
    try {
      const response = await axiosInstance.get(API_URL);
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve orders");
    }
  }

  async getOrdersForUser(userId: string): Promise<OrderDto[]> {
    try {
      const response = await axiosInstance.get(`${API_URL}/user/${userId}`);
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve orders for user");
    }
  }

  async getOrderById(orderId: string): Promise<OrderDto> {
    try {
      const response = await axiosInstance.get(`${API_URL}/${orderId}`);
      return response.data;
    } catch (error) {
      throw new Error("Failed to retrieve order details");
    }
  }

  async createOrder(createOrderDto: CreateOrderDto) {
    try {
      const response = await axiosInstance.post(API_URL, createOrderDto);
      return response.data;
    } catch (error) {
      throw new Error("Failed to create new order");
    }
  }

  async updateOrderStatus(
    orderId: string,
    updateOrderStatusDto: UpdateOrderStatusDto
  ): Promise<OrderDto> {
    try {
      const response = await axiosInstance.put(
        `${API_URL}/${orderId}/status`,
        updateOrderStatusDto
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to update order status");
    }
  }

  async addItemToOrder(orderId: string, addItemToOrderDto: AddItemToOrderDto) {
    try {
      const response = await axiosInstance.post(
        `${API_URL}/${orderId}/items`,
        addItemToOrderDto
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to add item to order");
    }
  }
}

export default new OrderService();
