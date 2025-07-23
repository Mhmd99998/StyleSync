import { BulkProductCsvRow } from "../models/BulkUploadCsvRow";
import { CreateProductDto } from "../models/Product";
import { AdminVariantDto } from "../models/Variant";

interface ParseResult {
  isValid: boolean;
  products: CreateProductDto[];
  errors: string[];
}

export const transformAndValidate = (
  rows: BulkProductCsvRow[]
): ParseResult => {
  const productsMap = new Map<string, CreateProductDto>();
  const seenVariants = new Set<string>();
  const errors: string[] = [];

  // Helper to normalize decimal with comma support
  const normalizeDecimal = (value: string): number => {
    return parseFloat(value.replace(",", "."));
  };

  rows.forEach((row, index) => {
    const {
      productName,
      description,
      isArchived,
      sku,
      categoryNames,
      variantSize,
      variantColor,
      variantPrice,
      variantBoughtAt,
      variantStock,
      variantMinStock,
      variantSku,
    } = row;

    // Trim all fields to prevent whitespace-related issues
    const trimmedProductName = productName?.trim() || "";
    const trimmedDescription = description?.trim() || "";
    const trimmedIsArchived = isArchived?.trim() || "false";
    const trimmedSku = sku?.trim() || "";
    const trimmedCategoryNames = categoryNames?.trim() || "";
    const trimmedSize = variantSize?.trim() || "";
    const trimmedColor = variantColor?.trim() || "";
    const trimmedPrice = variantPrice?.trim() || "";
    const trimmedBoughtAt = variantBoughtAt?.trim() || "";
    const trimmedStock = variantStock?.trim() || "";
    const trimmedMinStock = variantMinStock?.trim() || "";
    const trimmedVariantSku = variantSku?.trim() || "";

    // Basic required field validation
    if (
      !trimmedProductName ||
      !trimmedDescription ||
      !trimmedSku ||
      !trimmedSize ||
      !trimmedColor ||
      !trimmedPrice ||
      !trimmedStock || 
      !trimmedMinStock
    ) {
      errors.push(`Missing fields on row ${index + 2}`);
      return;
    }

    // Validate number formats
    const parsedPrice = normalizeDecimal(trimmedPrice);
    const parsedBoughtAt = normalizeDecimal(trimmedBoughtAt);
    const parsedStock = parseInt(trimmedStock, 10);
    const parsedMinStock = parseInt(trimmedMinStock, 10);
    const isValidStock = /^[0-9]+$/.test(trimmedStock);

    if (
      isNaN(parsedPrice) ||
      isNaN(parsedBoughtAt) ||
      isNaN(parsedStock) ||
      isNaN(parsedMinStock) ||
      !isValidStock
    ) {
      errors.push(`Invalid number format for prices or stocks on row ${index + 2}`);
      return;
    }

    // Ensure variant uniqueness
    const variantKey = `${trimmedSku}-${trimmedSize}-${trimmedColor}`;
    if (seenVariants.has(variantKey)) {
      errors.push(
        `Duplicate variant for SKU ${trimmedSku} (size: ${trimmedSize}, color: ${trimmedColor}) on row ${
          index + 2
        }`
      );
      return;
    }
    seenVariants.add(variantKey);

    const variant: AdminVariantDto = {
      variantId: "",
      productId: "",
      size: trimmedSize,
      color: trimmedColor,
      price: parsedPrice,
      boughtAt: parsedBoughtAt,
      stock: parsedStock,
      minStock: parsedMinStock,
      sku: trimmedVariantSku || undefined,
      images: [],
    };

    if (!productsMap.has(trimmedSku)) {
      productsMap.set(trimmedSku, {
        name: trimmedProductName,
        description: trimmedDescription,
        isArchived: trimmedIsArchived.toLowerCase() === "true",
        sku: trimmedSku,
        variants: [variant],
        categories: trimmedCategoryNames
          ? trimmedCategoryNames
              .split(",")
              .map((name) => ({ categoryId: "", name: name.trim() }))
          : [],
      });
    } else {
      const existing = productsMap.get(trimmedSku)!;
      existing.variants?.push(variant);
    }
  });

  return {
    isValid: errors.length === 0,
    products: Array.from(productsMap.values()),
    errors,
  };
};
