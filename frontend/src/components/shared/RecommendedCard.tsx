import React from "react";
import {
  Card,
  CardMedia,
  CardContent,
  Typography,
  Box,
  Tooltip,
  Chip,
  SxProps,
  Theme,
  IconButton,
  useMediaQuery,
} from "@mui/material";
import { useTheme } from "@mui/material/styles";
import { getChipColor, isLightColor, isValidCssColor } from "../../utils/colorUtils";
import ArrowForwardIcon from "@mui/icons-material/ArrowForward";

export interface DisplayPrice {
  lowestSalePrice: number;
  highestOriginalPrice: number;
  isOnSale: boolean;
}

interface RecommendedCardProps {
  name: string;
  imageUrl?: string;
  colors: string[];
  price: DisplayPrice;
  onClick?: () => void;
  sx?: SxProps<Theme>;
}

const RecommendedCard: React.FC<RecommendedCardProps> = ({
  name,
  imageUrl,
  colors,
  price,
  onClick,
  sx,
}) => {
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down('sm'));

  return (
    <Card
      sx={{
        width: '100%',
        minWidth: 300,
        maxWidth: 320,
        borderRadius: 1,
        overflow: "hidden",
        boxShadow: 3,
        position: "relative",
        transition: "transform 0.3s ease, box-shadow 0.3s ease",
        cursor: "pointer",
        display: "flex",
        flexDirection: "column",
        height: '100%', // Maintain equal card height
        "&:hover": {
          transform: "scale(1.015)",
          boxShadow: 6,
        },
        ...sx,
      }}
      onClick={onClick}
    >
      {/* Tags */}
      <Box sx={{ position: "absolute", top: 8, right: 8, display: 'flex', gap: 1, zIndex: 2 }}>
        <Chip label="For You" size="small" color="secondary" sx={{ fontWeight: 600 }} />
        {price.isOnSale && (
          <Chip label="On Sale" size="small" color="error" sx={{ fontWeight: 600 }} />
        )}
      </Box>

      {/* Image */}
      <Box
        sx={{
          position: "relative",
          height: isMobile ? 280 : 380,
          width: "100%",
          backgroundColor: "#f9f9f9", // Light background for transparency
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          overflow: "hidden",
        }}
      >
        <CardMedia
          component="img"
          image={imageUrl || "https://placehold.co/600x850@2x.png"}
          alt={name}
          sx={{
            maxHeight: "100%",
            maxWidth: "100%",
            objectFit: "contain",
            filter: "brightness(96%)",
          }}
        />
        <Box
          sx={{
            position: "absolute",
            top: 0,
            left: 0,
            height: "100%",
            width: "100%",
            background: "linear-gradient(to top, rgba(0,0,0,0.2), rgba(0,0,0,0))",
            pointerEvents: "none",
          }}
        />
      </Box>

      {/* Content */}
      <CardContent sx={{ p: 2, display: 'flex', flexDirection: 'column', flexGrow: 1 }}>
        <Typography
          variant="subtitle1"
          sx={{
            fontWeight: 600,
            fontSize: '1.1rem',
            display: "-webkit-box",
            WebkitBoxOrient: "vertical",
            WebkitLineClamp: 2,
            overflow: "hidden",
            textOverflow: "ellipsis",
            lineHeight: 1.3,
            minHeight: "2.6em", // Reserve space for 2 lines
          }}
        >
          {name}
        </Typography>

        <Box sx={{ display: 'flex', alignItems: 'baseline', gap: 1 }}>
          <Typography
            variant={price.isOnSale ? "subtitle1" : "body2"}
            sx={{
              fontWeight: 600,
              color: price.isOnSale ? theme.palette.error.main : theme.palette.text.primary,
            }}
          >
            ${price.lowestSalePrice.toFixed(2)}
          </Typography>
          {price.isOnSale && (
            <Typography
              variant="body2"
              sx={{
                textDecoration: "line-through",
                color: theme.palette.text.disabled,
              }}
            >
              ${price.highestOriginalPrice.toFixed(2)}
            </Typography>
          )}
        </Box>

        {/* Color Chips */}
        <Box sx={{ display: "flex", gap: 1, mt: 1, flexWrap: "wrap" }}>
          {colors.map((color) => {
            const chipColor = getChipColor(color);
            const isValid = isValidCssColor(chipColor);
            const needsBorder = isLightColor(chipColor);

            return (
              <Tooltip title={color} arrow key={color}>
                <Box
                  sx={{
                    width: isMobile ? 16 : 20,
                    height: isMobile ? 16 : 20,
                    borderRadius: "50%",
                    backgroundColor: isValid ? chipColor : "transparent",
                    border: `1.5px ${isValid ? (needsBorder ? "solid #999" : "solid #ccc") : "dashed #aaa"}`,
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
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

        <IconButton size="small" color="primary" onClick={onClick} sx={{ alignSelf: 'flex-end', mt: 1 }}>
          <ArrowForwardIcon />
        </IconButton>
      </CardContent>
    </Card>
  );
};

export default RecommendedCard;
