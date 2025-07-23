import React from "react";
import {
  Card,
  CardMedia,
  CardContent,
  Typography,
  Box,
  IconButton,
  useMediaQuery,
  Tooltip,
} from "@mui/material";
import { useTheme } from "@mui/material/styles";
import ArrowForwardIosIcon from "@mui/icons-material/ArrowForwardIos";
import { getChipColor, isLightColor, isValidCssColor } from "../../utils/colorUtils";

interface SearchCardProps {
  name: string;
  imageUrl?: string;
  colors: string[];
  prices: number[];
  onClick?: () => void;
}

const SearchCard: React.FC<SearchCardProps> = ({ name, imageUrl, colors, prices, onClick }) => {
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));
  const price = `$${Math.min(...prices).toFixed(2)}`;

  return (
    <Card
      onClick={onClick}
      sx={{
        borderRadius: 2,
        border: "0.4px solid",
        borderColor: "secondary.main",
        overflow: "hidden",
        boxShadow: 2,
        transition: "transform 0.25s ease",
        cursor: "pointer",
        maxWidth: isMobile ? 250 : 300, 
        "&:hover": {
          transform: "translateY(-4px)",
          boxShadow: 2,
        },
      }}
    >
      <CardMedia
        component="img"
        image={imageUrl || "https://placehold.co/600x850@2x.png"}
        alt={name}
        sx={{
          height: isMobile ? 320 : 400, 
          objectFit: "contain",          
          backgroundColor: "#f9f9f9",    
          p: 1,                          
        }}
      />

      <CardContent sx={{ px: 2, py: 1.5 }}>
        <Typography variant="subtitle1" fontWeight={600}>
          {name}
        </Typography>

        <Typography variant="body2" color="text.secondary">
          From {price}
        </Typography>

        <Box sx={{ display: "flex", gap: 1, mt: 1 }}>
          {colors.map((color) => {
            const chipColor = getChipColor(color);
            const isValid = isValidCssColor(chipColor);
            const needsBorder = isLightColor(chipColor);

            return (
              <Tooltip title={color} arrow key={color}>
                <Box
                  sx={{
                    width: 18,
                    height: 18,
                    borderRadius: "50%",
                    backgroundColor: isValid ? chipColor : "transparent",
                    border: `1.5px ${isValid ? (needsBorder ? "solid #999" : "solid #ccc") : "dashed #aaa"}`,
                  }}
                />
              </Tooltip>
            );
          })}
        </Box>

        <Box display="flex" justifyContent="flex-end" mt={2}>
          <IconButton size="small" color="primary">
            <ArrowForwardIosIcon fontSize="small" />
          </IconButton>
        </Box>
      </CardContent>
    </Card>
  );
};

export default SearchCard;
