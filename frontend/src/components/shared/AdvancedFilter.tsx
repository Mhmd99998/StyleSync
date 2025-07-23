import React, { useState, useEffect } from "react";
import {
  Drawer,
  Box,
  IconButton,
  Typography,
  useMediaQuery,
  useTheme,
  Tooltip,
  Divider,
  Chip,
  Slider,
} from "@mui/material";
import CloseIcon from "@mui/icons-material/Close";
import CheckIcon from "@mui/icons-material/Check";
import { getKnownColors, isLightColor } from "../../utils/colorUtils";
import CategoryService from "../../services/CategoryService";
import { CategoryDto } from "../../models/Category";
import ArrowBackIosNewIcon from "@mui/icons-material/ArrowBackIosNew";
import UnderlinedButton from "./UnderlinedButton";
import { ProductFilterDto } from "../../models/Product";

interface AdvancedFilterProps {
  open: boolean;
  onClose: () => void;
  onChange: (filters: ProductFilterDto) => void;
  defaultFilters?: ProductFilterDto;
}

const AdvancedFilter: React.FC<AdvancedFilterProps> = ({ open, onClose, onChange, defaultFilters }) => {
  const theme = useTheme();
  const isSmallScreen = useMediaQuery(theme.breakpoints.down("sm"));
  const knownColors = getKnownColors();

  const [selectedColors, setSelectedColors] = useState<string[]>([]);
  const [categories, setCategories] = useState<CategoryDto[]>([]);
  const [selectedCategories, setSelectedCategories] = useState<string[]>([]);
  const [selectedSizes, setSelectedSizes] = useState<string[]>([]);
  const [minPrice, setMinPrice] = useState<number | undefined>(undefined);
  const [maxPrice, setMaxPrice] = useState<number | undefined>(undefined);

  // Fetch categories on open
  useEffect(() => {
    if (open && defaultFilters) {
      CategoryService.getAllCategories()
        .then((data) => setCategories(data))
        .catch((error) => console.error("Failed to fetch categories", error));

      if (defaultFilters.colors) setSelectedColors(defaultFilters.colors);
      if (defaultFilters.sizes) setSelectedSizes(defaultFilters.sizes);
      if (defaultFilters.categoryIds) setSelectedCategories(defaultFilters.categoryIds);
      if (defaultFilters.minPrice !== undefined) setMinPrice(defaultFilters.minPrice);
      if (defaultFilters.maxPrice !== undefined) setMaxPrice(defaultFilters.maxPrice);
    }
  }, [open]);

  useEffect(() => {
    const handler = setTimeout(() => {
      onChange({
        colors: selectedColors.length ? selectedColors : undefined,
        sizes: selectedSizes.length ? selectedSizes : undefined,
        categoryIds: selectedCategories.length
          ? selectedCategories.map((id) => id)
          : undefined,
        minPrice,
        maxPrice,
      });
    }, 400);

    return () => {
      clearTimeout(handler); // cleanup to avoid rapid firing
    };
  }, [selectedColors, selectedSizes, selectedCategories]);

  const toggleColor = (name: string) => {
    setSelectedColors((prev) =>
      prev.includes(name) ? prev.filter((c) => c !== name) : [...prev, name]
    );
  };

  const toggleCategory = (id: string) => {
    setSelectedCategories((prev) =>
      prev.includes(id) ? prev.filter((c) => c !== id) : [...prev, id]
    );
  };

  return (
    <Drawer
      anchor="left"
      open={open}
      onClose={onClose}
      variant="temporary"
      ModalProps={{ keepMounted: true }}
      PaperProps={{
        sx: {
          width: isSmallScreen ? "100%" : 350,
          zIndex: theme.zIndex.modal + 1,
          p: 2,
          position: "absolute",
          backdropFilter: "blur(12px) saturate(1.1)",
          transition: "background-color 0.3s ease, backdrop-filter 0.3s ease",
          border: theme.palette.mode === "light" ? "1px solid rgba(0, 0, 0, 0.1)" : undefined,
          boxShadow: "0 8px 24px rgba(0, 0, 0, 0.15)",
          backgroundColor:
            theme.palette.mode === "dark"
              ? "rgba(5, 23, 46, 0.9)"
              : "rgba(245, 245, 245, 0.9)",
        },
      }}
    >
      {/* Header */}
      <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
        <Typography variant="h6">Advanced Filters</Typography>
        <IconButton onClick={onClose} aria-label="close filter">
          <CloseIcon />
        </IconButton>
      </Box>

      {/* Mobile Back Button */}
      {isSmallScreen && (
        <Box display="flex" alignItems="center" mb={1}>
          <UnderlinedButton
            size="small"
            startIcon={<ArrowBackIosNewIcon />}
            onClick={onClose}
            sx={{ my: 1 }}
          >
            BACK
          </UnderlinedButton>
        </Box>
      )}

      {/* Color Filter Section */}
      <Box mb={2}>
        <Typography
          variant="subtitle1"
          fontFamily="'Montserrat', sans-serif"
          color="text.main"
          fontSize={14}
          gutterBottom
        >
          COLOR
        </Typography>

        <Box display="flex" flexWrap="wrap" gap={1}>
          {Object.entries(knownColors).map(([name, hex]) => {
            const isLight = isLightColor(hex);
            const isSelected = selectedColors.includes(name);

            return (
              <Tooltip key={name} title={name.toUpperCase()}>
                <Box
                  onClick={() => toggleColor(name)}
                  sx={{
                    position: "relative",
                    width: 32,
                    height: 32,
                    borderRadius: "50%",
                    backgroundColor: hex,
                    border: `1.4px solid ${isLight ? "#ccc" : "#333"}`,
                    cursor: "pointer",
                    display: "flex",
                    alignItems: "center",
                    justifyContent: "center",
                  }}
                >
                  {isSelected && (
                    <CheckIcon
                      fontSize="small"
                      sx={{
                        color: isLight ? "black" : "white",
                        opacity: 0.6,
                        pointerEvents: "none",
                      }}
                    />
                  )}
                </Box>
              </Tooltip>
            );
          })}
        </Box>
      </Box>

      {/* Divider */}
      <Divider sx={{ my: 1 }} />

      {/* Category Filter Section */}
      <Box>
        <Typography
          variant="subtitle1"
          fontFamily="'Montserrat', sans-serif"
          color="text.main"
          fontSize={14}
          gutterBottom
        >
          CATEGORIES
        </Typography>

        <Box display="flex" flexWrap="wrap" gap={1}>
          {categories.map((cat) => {
            const selected = selectedCategories.includes(cat.categoryId);
            return (
              <Chip
                key={cat.categoryId}
                label={cat.name.toUpperCase()}
                variant="outlined"
                onClick={() => toggleCategory(cat.categoryId)}
                sx={{
                  borderRadius: 1.2,
                  px: 1.5,
                  py: 0.5,
                  height: 32,
                  fontSize: 11,
                  border: "1px solid",
                  borderColor: selected ? theme.palette.primary.main : "#ccc",
                  backgroundColor: selected ? theme.palette.action.selected : "transparent",
                  color: selected ? theme.palette.primary.main : "inherit",
                  fontWeight: selected ? 500 : 400,
                  cursor: "pointer",
                  "&:hover": {
                    backgroundColor: selected
                      ? theme.palette.action.hover
                      : theme.palette.action.selected,
                  },
                }}
              />
            );
          })}
        </Box>
      </Box>

      {/* Divider */}
      <Divider sx={{ my: 2 }} />

      {/* Size Filter Section */}
      <Box>
        <Typography
          variant="subtitle1"
          fontFamily="'Montserrat', sans-serif"
          color="text.main"
          fontSize={14}
          gutterBottom
        >
          SIZES
        </Typography>

        <Box display="flex" flexWrap="wrap" gap={1}>
          {["XS", "S", "M", "L", "XL", "XXL"].map((size) => {
            const selected = selectedSizes.includes(size);
            return (
              <Chip
                key={size}
                label={size}
                variant="outlined"
                onClick={() =>
                  setSelectedSizes((prev) =>
                    prev.includes(size)
                      ? prev.filter((s) => s !== size)
                      : [...prev, size]
                  )
                }
                sx={{
                  borderRadius: 1.2,
                  minWidth: 40,
                  height: 40,
                  fontSize: 12,
                  textAlign: "center",
                  border: "1px solid",
                  borderColor: selected ? theme.palette.primary.main : "#ccc",
                  backgroundColor: selected ? theme.palette.action.selected : "transparent",
                  color: selected ? theme.palette.primary.main : "inherit",
                  fontWeight: selected ? 500 : 400,
                  cursor: "pointer",
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                  "&:hover": {
                    backgroundColor: selected
                      ? theme.palette.action.hover
                      : theme.palette.action.selected,
                  },
                }}
              />
            );
          })}
        </Box>
        <Divider sx={{ my: 2 }} />

        <Typography variant="subtitle2" gutterBottom>
          Price Range ($)
        </Typography>

        <Slider
          value={[minPrice ?? 0, maxPrice ?? 250]}
          onChange={(_, newValue) => {
            const [newMin, newMax] = newValue as number[];
            setMinPrice(newMin);
            setMaxPrice(newMax);
          }}
          valueLabelDisplay="auto"
          step={5}
          min={0}
          max={250}
          marks={[
            { value: 0, label: '$0' },
            { value: 50, label: '$50' },
            { value: 100, label: '$100' },
            { value: 150, label: '$150' },
            { value: 200, label: '$200' },
            { value: 250, label: '$250' },
          ]}
          sx={{
            mt: 2,
            mb: 1,
            '& .MuiSlider-markLabel': {
              fontSize: '0.75rem',
              color: 'text.secondary',
            },
          }}
        />
      </Box>
    </Drawer>
  );
};

export default AdvancedFilter;
