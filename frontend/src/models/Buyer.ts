export interface BuyerDto {
  buyerId: string;
  name: string;
  location?: string;
  email?: string;
  phoneNumber?: string;
  balance: number;
  createdAt: string;
}

export interface CreateBuyerDto {
  name: string;
  location?: string;
  email?: string;
  phoneNumber?: string;
  balance: number;
}

export interface UpdateBuyerDto {
  name: string;
  location?: string;
  email?: string;
  phoneNumber?: string;
  balance: number;
}
