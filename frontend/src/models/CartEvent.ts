export interface CartEvent {
  eventId: string;
  userId: string;
  variantId: string;
  quantity: number;
}

export interface CreateCartEvenRequest {
  userId: string;
  variantId: string;
  quantity: number;
}
