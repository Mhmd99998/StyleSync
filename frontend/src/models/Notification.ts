export interface CreateNotificationDto {
  variantId: string;
  userEmail: string;
}

export interface ProductStockNotification {
  notificationId: string;
  variantId: string;
  userEmail: string;
  createdAt: string;
  notified: boolean;
}
