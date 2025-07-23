import React, { useEffect, useState } from "react";
import {
  Card,
  CardContent,
  Typography,
  Box,
  Tooltip,
  SxProps,
  Theme,
  useTheme,
  useMediaQuery,
} from "@mui/material";
import { getChipColor, isLightColor, isValidCssColor } from "../../utils/colorUtils";
import UnderlinedButton from "../shared/UnderlinedButton";

interface VariantPriceInfo {
  price: number;
  onSale?: number;
}

interface ProductProps {
  name: string;
  imageUrl?: string;
  colors: string[];
  variantPrices: VariantPriceInfo[];
  variantImagesByColor: Record<string, string>;
  onImageClick?: () => void;
  sx?: SxProps<Theme>;
}

const ProductCard: React.FC<ProductProps> = ({
  name,
  imageUrl,
  colors,
  variantPrices,
  variantImagesByColor,
  onImageClick,
  sx,
}) => {
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  const [hoveredColor, setHoveredColor] = useState<string | null>(null);

  useEffect(() => {
    Object.values(variantImagesByColor).forEach((src) => {
      const img = new Image();
      img.src = src;
    });
  }, [variantImagesByColor]);

  const lowestPriceVariant = variantPrices.reduce((prev, curr) => {
    const prevEffective = prev.onSale ?? prev.price;
    const currEffective = curr.onSale ?? curr.price;
    return currEffective < prevEffective ? curr : prev;
  }, variantPrices[0]);

  const hasSale = lowestPriceVariant.onSale !== undefined;

  return (
    <Card
      sx={{
        width: "100%",
        minWidth: 300,
        borderRadius: 1.5,
        border:"0.3px solid",
        borderColor: "secondary.main",
        overflow: "hidden",
        boxShadow: 2,
        transition: "transform 0.3s ease",
        cursor: "pointer",
        "&:hover": {
          transform: "scale(1.02)",
        },
        ...sx,
      }}
    >
      <Box sx={{ position: "relative" }}>
        {hasSale && (
          <Box
            sx={{
              position: "absolute",
              top: 8,
              left: 8,
              backgroundColor: theme.palette.error.main,
              color: "#fff",
              px: 1.5,
              py: 0.25,
              borderRadius: "12px",
              fontSize: "0.75rem",
              fontWeight: 600,
              zIndex: 1,
            }}
          >
            ON SALE
          </Box>
        )}

        {/* Image container with fading layers */}
        <Box
          onClick={onImageClick}
          sx={{
            height: isMobile ? 300 : 400,
            width: "100%",
            backgroundColor: theme.palette.grey[100],
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            overflow: "hidden",
            px: 2,
            position: "relative",
          }}
        >
          {/* Default image */}
          <Box
            component="img"
            src={imageUrl || "https://placehold.co/600x850@2x.png"}
            alt={name}
            sx={{
              position: "absolute",
              top: 0,
              left: 0,
              width: "100%",
              height: "100%",
              objectFit: "contain",
              opacity: hoveredColor && variantImagesByColor[hoveredColor] ? 0 : 1,
              transition: "opacity 0.5s ease-in-out",
              borderRadius: 1,
            }}
          />

          {/* Hover image */}
          {hoveredColor && variantImagesByColor[hoveredColor] && (
            <Box
              component="img"
              src={variantImagesByColor[hoveredColor]}
              alt={`${name}-${hoveredColor}`}
              sx={{
                position: "absolute",
                top: 0,
                left: 0,
                width: "100%",
                height: "100%",
                objectFit: "contain",
                opacity: 1,
                transition: "opacity 0.75s ease-in-out",
                borderRadius: 1,
              }}
            />
          )}
        </Box>
      </Box>

      <CardContent
        sx={{
          px: 1.5,
          py: 1.25,
          '&:last-child': { pb: 1.25 },
          display: 'flex',
          flexDirection: 'column',
          alignItems: 'center',
          gap: 1,
          maxWidth: 260,
          margin: "0 auto",
        }}
      >
        <Typography
          variant="body1"
          sx={{
            fontWeight: 500,
            fontSize: isMobile ? '1rem' : '1.1rem',
            textAlign: 'center',
            wordBreak: 'break-word',
            display: '-webkit-box',
            WebkitBoxOrient: 'vertical',
            WebkitLineClamp: 2,
            overflow: 'hidden',
            maxWidth: '100%',
          }}
        >
          {name}
        </Typography>

        <Box display="flex" alignItems="center" gap={1}>
          {hasSale ? (
            <>
              <Typography
                variant="body2"
                sx={{
                  textDecoration: 'line-through',
                  color: 'text.disabled',
                  fontSize: isMobile ? '0.85rem' : '0.95rem',
                }}
              >
                ${lowestPriceVariant.price.toFixed(2)}
              </Typography>
              <Typography
                variant="body1"
                color="error"
                sx={{
                  fontWeight: 600,
                  fontSize: isMobile ? '1rem' : '1.1rem',
                }}
              >
                ${lowestPriceVariant.onSale!.toFixed(2)}
              </Typography>
            </>
          ) : (
            <Typography
              variant="body1"
              sx={{
                fontWeight: 500,
                fontSize: isMobile ? '1rem' : '1.1rem',
              }}
            >
              ${lowestPriceVariant.price.toFixed(2)}
            </Typography>
          )}
        </Box>

        {/* Color Swatches */}
        <Box
          sx={{
            display: "flex",
            gap: 1,
            mt: 1,
            flexWrap: "wrap",
            justifyContent: "center",
          }}
        >
          {colors.map((color) => {
            const chipColor = getChipColor(color);
            const isValid = isValidCssColor(chipColor);
            const needsBorder = isLightColor(chipColor);

            return (
              <Tooltip title={color} arrow key={color}>
                <Box
                  onMouseEnter={() => setHoveredColor(color)}
                  onMouseLeave={() => setHoveredColor(null)}
                  sx={{
                    width: isMobile ? 16 : 20,
                    height: isMobile ? 16 : 20,
                    borderRadius: "50%",
                    backgroundColor: isValid ? chipColor : "transparent",
                    border: `2px ${isValid ? (needsBorder ? "solid #999" : "solid #ccc") : "dashed #aaa"}`,
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                    cursor: "pointer",
                  }}
                >
                  {!isValid && (
                    <Typography variant="caption" sx={{ fontSize: '0.5rem' }}>
                      ?
                    </Typography>
                  )}
                </Box>
              </Tooltip>
            );
          })}
        </Box>

        <UnderlinedButton
          size="small"
          onClick={onImageClick}
          sx={{
            mt: 1.5,
            textTransform: 'none',
            fontWeight: 500,
            fontSize: isMobile ? '0.75rem' : '0.85rem',
            px: 2.5,
            py: 0.5,
            color: "text.primary",
            borderColor: "text.primary",
            "&:hover": {
              backgroundColor: "rgba(0, 0, 0, 0.04)",
              borderColor: "text.primary",
            },
          }}
        >
          SHOP NOW
        </UnderlinedButton>
      </CardContent>
    </Card>
  );
};

export default ProductCard;