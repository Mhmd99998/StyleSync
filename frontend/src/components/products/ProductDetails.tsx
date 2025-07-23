import React, { ChangeEvent, useEffect, useState } from 'react';
import {
  Box,
  Typography,
  Button,
  CircularProgress,
  TextField,
  Collapse,
} from '@mui/material';
import { useParams } from 'react-router-dom';
import { useSelector } from 'react-redux';
import ShoppingCartIcon from '@mui/icons-material/ShoppingCart';
import ProductService from '../../services/ProductService';
import CartService from '../../services/CartService';
import { ProductDto } from '../../models/Product';
import { ImageDto } from '../../models/Image';
import { toast } from 'material-react-toastify';
import { RootState } from '../../redux/store';
import {
  getChipColor,
  isLightColor,
  isValidCssColor,
} from '../../utils/colorUtils';
import ImagePreviewModal from '../shared/ImagePreviewModal';
import CartEventService from '../../services/CartEventService';
import NotificationService from '../../services/NotificationService';
import { sortSizes } from '../../utils/sizeUtils';

const ProductDetails: React.FC = () => {
  const { productId } = useParams<{ productId: string }>();
  const userId = useSelector((state: RootState) => state.user.userId);
  const userEmail = useSelector((state: RootState) => state.user.email);
  const [showDescription, setShowDescription] = useState(false);

  const [product, setProduct] = useState<ProductDto | null>(null);
  const [loading, setLoading] = useState(true);
  const [selectedColor, setSelectedColor] = useState<string | null>(null);
  const [selectedSize, setSelectedSize] = useState<string | null>(null);
  const [quantity, setQuantity] = useState<number>(1);
  const [currentImagePage, setCurrentImagePage] = useState(0);
  const [previewImageUrl, setPreviewImageUrl] = useState<string | null>(null);
  const [isModalOpen, setIsModalOpen] = useState(false);

  const IMAGES_PER_PAGE = 4;

  useEffect(() => {
    const fetchProduct = async () => {
      if (!productId) return;
      try {
        const response = await ProductService.getProductById(productId);
        setProduct(response);
        if (response.variants.length > 0) {
          const firstVariant = response.variants[0];
          setSelectedColor(firstVariant.color);
          setSelectedSize(firstVariant.size);
        }
      } catch (error) {
        console.error('Error fetching product:', error);
      } finally {
        setLoading(false);
      }
    };
    fetchProduct();
  }, [productId]);

  useEffect(() => {
    if (!product || !selectedColor) return;

    const sizesForColor = sortSizes(
      Array.from(
        new Set(
          product.variants
            .filter(v => v.color === selectedColor)
            .map(v => v.size)
        )
      )
    );

    if (sizesForColor.length > 0) {
      setSelectedSize(sizesForColor[0]);
    } else {
      setSelectedSize(null);
    }
  }, [selectedColor, product]);


  const filteredSizes = product
    ? sortSizes(
      Array.from(
        new Set(
          product.variants
            .filter(v => v.color === selectedColor)
            .map(v => v.size)
        )
      )
    )
    : [];

  const colors = product
    ? Array.from(new Set(product.variants.map(v => v.color)))
    : [];

  const selectedVariant = product?.variants.find(
    v =>
      v.color.toLowerCase().trim() === (selectedColor ?? '').toLowerCase().trim() &&
      v.size.trim() === (selectedSize ?? '').trim()
  );

  const isVariantAvailable = selectedVariant && selectedVariant.stock > 0;

  const isSelectionComplete = Boolean(selectedColor && selectedSize);
  const isQuantityValid = selectedVariant ? quantity <= selectedVariant.stock : true;

  const isAddToCartValid = isSelectionComplete && isVariantAvailable && isQuantityValid;
  const isNotifyValid = isSelectionComplete && !isVariantAvailable;

  const originalPrice = selectedVariant
    ? selectedVariant.price
    : product?.variants[0]?.price ?? 0;
  const onSalePrice =
    selectedVariant?.onSale && selectedVariant.onSale > 0
      ? selectedVariant.onSale
      : null;

  const handleAddToCart = async () => {
    if (!userId) {
      toast.info('Please log in to add items to your cart.');
      return;
    }

    if (!selectedVariant) {
      toast.error('Please select a valid size and color.');
      return;
    }

    try {
      await CartService.addItemToCart(userId, {
        variantId: selectedVariant.variantId,
        quantity,
      });

      await CartEventService.createEvent({
        userId,
        variantId: selectedVariant.variantId,
        quantity,
      });

      toast.success('Item added to cart!');
    } catch (error) {
      toast.error('Failed to add item to cart.');
      console.error('Add to cart error:', error);
    }
  };

  const handleNotifyWhenInStock = async () => {
    if (!userId || !userEmail) {
      toast.info("You must be logged in to use this feature!");
      return;
    }

    if (!selectedVariant) {
      toast.error("The selected combination doesn't exist.");
      return;
    }

    try {
      await NotificationService.createNotification({
        variantId: selectedVariant.variantId,
        userEmail,
      });
      toast.success("You will be notified when the product becomes available!");
    } catch (error) {
      toast.error("Failed to create notification request, please try again later");
      console.error('Create notification request error:', error);
    }
  };

  const handleQuantityChange = (e: ChangeEvent<HTMLInputElement>) => {
    const value = parseInt(e.target.value);
    if (!isNaN(value) && value > 0) {
      const max = selectedVariant?.stock ?? Infinity;
      setQuantity(Math.min(value, max));
    }
  };

  const images: ImageDto[] = product
    ? Array.from(
      new Map(
        product.variants
          .filter(variant => !selectedColor || variant.color === selectedColor)
          .flatMap(variant => variant.images || [])
          .filter(img => img && img.imageUrl)
          .map(img => [img.imageId, img])
      ).values()
    )
    : [];

  const paginatedImages = images.slice(
    currentImagePage * IMAGES_PER_PAGE,
    (currentImagePage + 1) * IMAGES_PER_PAGE
  );

  const handlePrevPage = () => {
    setCurrentImagePage(prev => Math.max(prev - 1, 0));
  };

  const handleNextPage = () => {
    const maxPage = Math.floor((images.length - 1) / IMAGES_PER_PAGE);
    setCurrentImagePage(prev => Math.min(prev + 1, maxPage));
  };

  if (loading) {
    return (
      <Box display="flex" justifyContent="center" alignItems="center" minHeight="100vh">
        <CircularProgress />
      </Box>
    );
  }

  if (!product) {
    return (
      <Box p={2}>
        <Typography variant="h6">Product not found.</Typography>
      </Box>
    );
  }

  return (
    <Box p={2} sx={{ fontFamily: "'Inter', 'Helvetica Neue', sans-serif" }}>
      <Box
        maxWidth="1400px"
        mx="auto"
        display="flex"
        flexDirection={{ xs: 'column', md: 'row' }}
        gap={4}
        p={3}
        mb={5}
      >
        {/* Image Section */}
        <Box flex={2} width="100%">
          <Box display="grid" gridTemplateColumns="repeat(2, 1fr)" gap={2}>
            {paginatedImages.map(img => (
              <Box
                key={img.imageId}
                component="img"
                src={img.imageUrl}
                alt={product.name}
                onClick={() => {
                  setIsModalOpen(true);
                  setPreviewImageUrl(img.imageUrl);
                }}
                sx={{
                  width: '100%',
                  height: 360,
                  objectFit: 'contain',
                  borderRadius: 1,
                  boxShadow: 2,
                  cursor: 'pointer',
                  transition: 'transform 0.2s',
                  '&:hover': {
                    transform: 'scale(1.02)',
                  },
                }}
              />
            ))}
          </Box>

          {images.length > IMAGES_PER_PAGE && (
            <Box display="flex" justifyContent="center" mt={2} gap={2}>
              <Button size="small" onClick={handlePrevPage} disabled={currentImagePage === 0}>
                Previous
              </Button>
              <Typography fontSize="0.85rem">
                Page {currentImagePage + 1} of {Math.ceil(images.length / IMAGES_PER_PAGE)}
              </Typography>
              <Button
                size="small"
                onClick={handleNextPage}
                disabled={(currentImagePage + 1) * IMAGES_PER_PAGE >= images.length}
              >
                Next
              </Button>
            </Box>
          )}
        </Box>

        {/* Product Info*/}
        <Box flex={2} display="flex" flexDirection="column" justifyContent="space-between">
          <Box>
            <Typography variant="h5" fontWeight={500} gutterBottom>
              {product.name}
            </Typography>
            {onSalePrice && (
              <Box
                component="span"
                sx={{
                  backgroundColor: 'error.main',
                  color: '#fff',
                  borderRadius: '4px',
                  px: 1,
                  py: 0.25,
                  fontSize: '0.75rem',
                  fontWeight: 600,
                  display: 'inline-block',
                  mb: 1,
                }}
              >
                ON SALE
              </Box>
            )}
            <Box display="flex" alignItems="center" gap={1} mb={2}>
              {onSalePrice ? (
                <>
                  <Typography fontSize="1rem" fontWeight={500} sx={{ textDecoration: 'line-through', color: 'text.secondary' }}>
                    ${originalPrice.toFixed(2)}
                  </Typography>
                  <Typography fontSize="1.2rem" fontWeight={600} sx={{ color: 'error.main' }}>
                    ${onSalePrice.toFixed(2)}
                  </Typography>
                </>
              ) : (
                <Typography fontSize="1rem" fontWeight={400} color="text.secondary">
                  ${originalPrice.toFixed(2)}
                </Typography>
              )}
            </Box>

            {/* Product Description */}
            {product.description && (
              <Box mb={2}>
                <Button
                  variant="text"
                  size="small"
                  onClick={() => setShowDescription(prev => !prev)}
                  sx={{ textTransform: 'none', fontSize: '0.85rem', px: 0 }}
                >
                  {showDescription ? 'Hide Description ▲' : 'Show Description ▼'}
                </Button>
                <Collapse in={showDescription}>
                  <Typography
                    variant="body2"
                    color="text.secondary"
                    sx={{ mt: 1, whiteSpace: 'pre-wrap', lineHeight: 1.6 }}
                  >
                    {product.description}
                  </Typography>
                </Collapse>
              </Box>
            )}

            {/* Color Selection */}
            <Typography fontSize="0.9rem" color="text.secondary" gutterBottom>
              Color
            </Typography>
            <Box display="flex" gap={1} flexWrap="wrap" mb={2}>
              {colors.map(color => {
                const chipColor = getChipColor(color);
                const isValid = isValidCssColor(chipColor);
                const isSelected = selectedColor === color;
                const needsBorder = isLightColor(chipColor);

                return (
                  <Box
                    key={color}
                    onClick={() => setSelectedColor(color)}
                    title={color}
                    sx={{
                      width: 42,
                      height: 42,
                      borderRadius: '50%',
                      backgroundColor: isValid ? chipColor : 'transparent',
                      border: isValid
                        ? needsBorder
                          ? '2px solid #222'
                          : '2px solid #aaa'
                        : '2px dashed #aaa',
                      boxShadow: isSelected ? '0 0 0 3px rgba(25, 118, 210, 0.5)' : 'none',
                      cursor: 'pointer',
                      display: 'flex',
                      alignItems: 'center',
                      justifyContent: 'center',
                      transition: 'all 0.2s ease-in-out',
                      fontSize: '0.75rem',
                      color: 'text.secondary',
                    }}
                  >
                    {!isValid && "?"}
                  </Box>
                );
              })}
            </Box>

            {/* Size */}
            <Typography fontSize="0.9rem" color="text.secondary" gutterBottom>
              Size
            </Typography>
            <Box display="flex" gap={1} flexWrap="wrap" mb={2}>
              {filteredSizes.map(size => (
                <Button
                  key={size}
                  variant={selectedSize === size ? 'contained' : 'outlined'}
                  onClick={() => setSelectedSize(size)}
                  size="small"
                  sx={{ textTransform: 'none', minWidth: 40, fontSize: '0.8rem' }}
                >
                  {size}
                </Button>
              ))}
            </Box>

            {/* Quantity */}
            <Typography fontSize="0.9rem" color="text.secondary" gutterBottom>
              Quantity
            </Typography>
            <TextField
              type="number"
              size="small"
              inputProps={{
                min: 1,
                max: selectedVariant?.stock || undefined,
              }}
              value={quantity}
              onChange={handleQuantityChange}
              sx={{ width: 100 }}
            />

            {(!selectedColor || !selectedSize) && (
              <Typography variant="body2" color="text.secondary" mt={1}>
                Please select both color and size.
              </Typography>
            )}
            {selectedColor && selectedSize && !isVariantAvailable && (
              <Typography variant="body2" sx={{ color: 'error.main', mt: 1 }}>
                Out of Stock
              </Typography>
            )}
            {selectedVariant && selectedVariant.stock > 0 && quantity > selectedVariant.stock && (
              <Typography variant="body2" sx={{ color: 'error.main', mt: 1 }}>
                Only {selectedVariant.stock} item{selectedVariant.stock > 1 ? 's' : ''} in stock.
              </Typography>
            )}
          </Box>

          {/* Action Buttons */}
          <Box mt={4} display="flex" flexDirection="column" gap={2}>
            <Button
              variant="outlined"
              color="primary"
              size="large"
              fullWidth
              disabled={!isAddToCartValid}
              onClick={handleAddToCart}
              startIcon={<ShoppingCartIcon />}
            >
              ADD TO CART
            </Button>
            <Button
              variant="contained"
              color="primary"
              size="large"
              fullWidth
              disabled={!isNotifyValid}
              onClick={handleNotifyWhenInStock}
            >
              NOTIFY WHEN IN STOCK!
            </Button>
          </Box>
        </Box>
      </Box>

      {/* Image Preview Modal */}
      <ImagePreviewModal
        open={isModalOpen}
        images={images}
        initialImage={previewImageUrl!}
        onClose={() => setIsModalOpen(false)}
      />
    </Box>
  );
};

export default ProductDetails;
