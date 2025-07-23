import {
  CreateNotificationDto,
  ProductStockNotification,
} from "../models/Notification";
import axiosInstance from "./axiosInstance";

const API_URL = "/notifications";

class NotificationService {
  public async createNotification(
    createNotificationDto: CreateNotificationDto
  ): Promise<ProductStockNotification> {
    try {
      const response = await axiosInstance.post(API_URL, createNotificationDto);
      return response.data;
    } catch (error) {
      throw new Error("Failed to create notification request");
    }
  }
}

export default new NotificationService();
