import { CartEvent, CreateCartEvenRequest } from "../models/CartEvent";
import axiosInstance from "./axiosInstance";

const API_URL = "/cart-events";

class CartEventService {
  public async createEvent(request: CreateCartEvenRequest): Promise<CartEvent> {
    try {
      const response = await axiosInstance.post(API_URL, request);
      return response.data;
    } catch (error) {
      throw new Error("Failed to create cart event");
    }
  }
}

export default new CartEventService();
