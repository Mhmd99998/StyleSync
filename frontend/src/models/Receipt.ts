export interface ReceiptDto {
  receiptId: string;
  buyerId: string;
  totalAmount: number;
  date: string;
  receiptItems: ReceiptItemDto[];
}

export interface CreateReceiptDto {
  buyerId: string;
  date: string;
  receiptItems: ReceiptItemDto[];
}

export interface UpdateReceiptDto {
  date: string;
  receiptItems: ReceiptItemDto[];
}

export interface ReceiptItemDto {
  receiptItemId: string;
  variantId: string;
  quantity: number;
  sellingPrice: number;
}

export interface CreateReceiptItemDto {
  variantId: string;
  quantity: number;
  sellingPrice: number;
}

export interface UpdateReceiptItemDto {
  variantId?: string;
  quantity?: number;
  sellingPrice?: number;
}
