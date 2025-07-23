export interface OrderConfirmationEmailDto {
  email: string;
  orderId: string;
  orderDate: string;
}

export interface OrderStatusUpdateEmailDto {
  email: string;
  orderId: string;
  newStatus: "Pending" | "Shipped" | "Delivered" | "Cancelled";
}
