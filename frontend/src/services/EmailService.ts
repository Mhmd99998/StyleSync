import {
  OrderConfirmationEmailDto,
  OrderStatusUpdateEmailDto,
} from "../models/Email";
import axiosInstance from "./axiosInstance";

const API_URL = "/emails";

class EmailService {
  public async sendOrderConfirmation(
    orderConfirmationEmailDto: OrderConfirmationEmailDto
  ) {
    try {
      const response = await axiosInstance.post(
        `${API_URL}/order-confirmation`,
        orderConfirmationEmailDto
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to send confirmation email");
    }
  }

  public async sendOrderStatusUpdate(
    orderStatusUpdateEmailDto: OrderStatusUpdateEmailDto
  ) {
    try {
      const response = await axiosInstance.post(
        `${API_URL}/order-status-update`,
        orderStatusUpdateEmailDto
      );
      return response.data;
    } catch (error) {
      throw new Error("Failed to send order update email");
    }
  }
}

export default new EmailService();
