export interface CreateOrderDto {
  userId: string;
  shippingAddress: string;
  paymentIntentId: string;
  status: "Pending" | "Shipped" | "Delivered" | "Cancelled";
}

export interface UpdateOrderStatusDto {
  status: "Pending" | "Shipped" | "Delivered" | "Cancelled";
}

export interface AddItemToOrderDto {
  variantId: string;
  quantity: number;
  priceAtPurchase: number;
}

export interface OrderItemDto {
  orderItemId: string;
  variantId: string;
  variantName: string;
  quantity: number;
  priceAtPurchase: number;
}

export interface OrderDto {
  orderId: string;
  userId: string;
  paymentIntentId: string;
  status: "Pending" | "Shipped" | "Delivered" | "Cancelled";
  createdAt: string;
  shippingAddress: string;
  items: OrderItemDto[];
}
