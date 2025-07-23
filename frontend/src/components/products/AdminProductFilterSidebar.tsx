import React, { useEffect, useState } from "react";
import {
  Drawer,
  Box,
  IconButton,
  Typography,
  Divider,
  Chip,
  useMediaQuery,
  useTheme,
  Button,
  Slider
} from "@mui/material";
import CloseIcon from "@mui/icons-material/Close";
import TuneIcon from "@mui/icons-material/Tune";
import { ProductFilterDto } from "../../models/Product";
import CategoryService from "../../services/CategoryService";
import { CategoryDto } from "../../models/Category";
import CheckIcon from "@mui/icons-material/Check";
import Tooltip from "@mui/material/Tooltip";
import { getKnownColors, isLightColor } from "../../utils/colorUtils";

interface Props {
  filters: ProductFilterDto;
  onChange: (filters: ProductFilterDto) => void;
}

const AdminProductFilterSidebar: React.FC<Props> = ({ filters, onChange }) => {
  const [open, setOpen] = useState(false);
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  const [categories, setCategories] = useState<CategoryDto[]>([]);
  const [selectedCategories, setSelectedCategories] = useState<string[]>([]);
  const [archived, setArchived] = useState<boolean | undefined>(undefined);
  const [minPrice, setMinPrice] = useState<number | undefined>(undefined);
  const [maxPrice, setMaxPrice] = useState<number | undefined>(undefined);
  const [selectedSizes, setSelectedSizes] = useState<string[]>([]);
  const [selectedColors, setSelectedColors] = useState<string[]>([]);
  const knownColors = getKnownColors();

  useEffect(() => {
    CategoryService.getAllCategories()
      .then(setCategories)
      .catch((err) => console.error("Failed to fetch categories", err));
  }, []);

  useEffect(() => {
    const timeout = setTimeout(() => {
      onChange({
        ...filters,
        colors: selectedColors.length > 0 ? selectedColors : undefined,
        sizes: selectedSizes.length > 0 ? selectedSizes : undefined,
        categoryIds: selectedCategories.length > 0 ? selectedCategories : undefined,
        isArchived: archived,
        minPrice,
        maxPrice,
      });
    }, 300);

    return () => clearTimeout(timeout);
  }, [selectedCategories, archived, minPrice, maxPrice, selectedColors, selectedSizes]);

  const toggleCategory = (id: string) => {
    setSelectedCategories((prev) =>
      prev.includes(id) ? prev.filter((c) => c !== id) : [...prev, id]
    );
  };

  return (
    <>
      <Button
        startIcon={<TuneIcon />}
        onClick={() => setOpen(true)}
        sx={{ ml: 3, mt: 2 }}
        variant="outlined"
      >
        Filters
      </Button>

      <Drawer
        anchor="left"
        open={open}
        onClose={() => setOpen(false)}
        PaperProps={{
          sx: {
            width: isMobile ? "100%" : 300,
            p: 2,
            backdropFilter: "blur(10px)",
            backgroundColor: theme.palette.mode === "dark" ? "#121212" : "#fafafa",
          },
        }}
      >
        <Box display="flex" justifyContent="space-between" alignItems="center" mb={2}>
          <Typography variant="h6">Filter Products</Typography>
          <IconButton onClick={() => setOpen(false)}>
            <CloseIcon />
          </IconButton>
        </Box>
        <Box mb={2}>
          <Typography
            variant="subtitle2"
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
                    onClick={() =>
                      setSelectedColors((prev) =>
                        prev.includes(name)
                          ? prev.filter((c) => c !== name)
                          : [...prev, name]
                      )
                    }
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

        <Divider sx={{ my: 2 }} />

        {/* Category Filters */}
        <Typography variant="subtitle2" gutterBottom>
          Categories
        </Typography>
        <Box display="flex" flexWrap="wrap" gap={1} mb={2}>
          {categories.map((cat) => {
            const selected = selectedCategories.includes(cat.categoryId);
            return (
              <Chip
                key={cat.categoryId}
                label={cat.name}
                variant={selected ? "filled" : "outlined"}
                color={selected ? "primary" : "default"}
                onClick={() => toggleCategory(cat.categoryId)}
              />
            );
          })}
        </Box>

        <Divider sx={{ my: 2 }} />
        <Box mt={3}>
          <Typography
            variant="subtitle2"
            fontFamily="'Montserrat', sans-serif"
            color="text.main"
            fontSize={14}
            gutterBottom
          >
            SIZES
          </Typography>

          <Box display="flex" flexWrap="wrap" gap={1}>
            {["XS", "S", "M", "L", "XL", "XXL", "XXXL"].map((size) => {
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
        </Box>

        <Divider sx={{ my: 2 }} />

        {/* Archived Filter */}
        <Typography variant="subtitle2" gutterBottom>
          Archive Status
        </Typography>
        <Box display="flex" gap={1}>
          <Chip
            label="Active"
            variant={archived === false ? "filled" : "outlined"}
            color={archived === false ? "primary" : "default"}
            onClick={() => setArchived((prev) => (prev === false ? undefined : false))}
          />
          <Chip
            label="Archived"
            variant={archived === true ? "filled" : "outlined"}
            color={archived === true ? "primary" : "default"}
            onClick={() => setArchived((prev) => (prev === true ? undefined : true))}
          />
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
      </Drawer>
    </>
  );
};

export default AdminProductFilterSidebar;
