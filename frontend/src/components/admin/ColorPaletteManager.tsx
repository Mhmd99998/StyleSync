import React, { useEffect, useState } from "react";
import {
  Box,
  Typography,
  Button,
  Divider,
  Tooltip,
  IconButton,
  useTheme,
  TextField,
  InputAdornment,
  useMediaQuery,
  Stack,
} from "@mui/material";
import AddIcon from "@mui/icons-material/Add";
import CloseIcon from "@mui/icons-material/Close";
import EditColorModal from "./EditColorModal";
import AddColorModal from "./AddColorModal";
import ConfirmationPopup from "../shared/ConfirmationPopup";
import SearchIcon from "@mui/icons-material/Search";
import {
  getKnownColors,
  saveKnownColors,
  getChipColor,
  isValidCssColor,
  isLightColor,
} from "../../utils/colorUtils";
import VariantService from "../../services/VariantService";
import { toast } from "material-react-toastify";

const ColorPaletteManager: React.FC = () => {
  const [colors, setColors] = useState<Record<string, string>>({});
  const [filteredColors, setFilteredColors] = useState<Record<string, string>>({});
  const [editingColorName, setEditingColorName] = useState<string | null>(null);
  const [showAddModal, setShowAddModal] = useState(false);
  const [colorToDelete, setColorToDelete] = useState<string | null>(null);
  const [search, setSearch] = useState<string>("");
  const theme = useTheme();
  const isSmallScreen = useMediaQuery(theme.breakpoints.down("sm"));

  useEffect(() => {
    const storedColors = getKnownColors();
    setColors(storedColors);
  }, []);

  useEffect(() => {
    const delayDebounce = setTimeout(() => {
      const term = search.toLowerCase().trim();
      if (term === "") {
        setFilteredColors(colors);
      } else {
        const filtered: Record<string, string> = {};
        for (const [name, value] of Object.entries(colors)) {
          if (name.toLowerCase().includes(term)) {
            filtered[name] = value;
          }
        }
        setFilteredColors(filtered);
      }
    }, 400);

    return () => clearTimeout(delayDebounce);
  }, [search, colors]);

  const updateColors = (updated: Record<string, string>) => {
    setColors(updated);
    saveKnownColors(updated);
  };

  const handleEditSave = (newName: string, newColor: string) => {
    if (!editingColorName) return;

    const updated = { ...colors };
    if (newName !== editingColorName) {
      delete updated[editingColorName];
    }

    updated[newName] = newColor;
    updateColors(updated);
    setEditingColorName(null);
  };

  const handleAddSave = (newName: string, newColor: string) => {
    const updated = { ...colors, [newName]: newColor };
    updateColors(updated);
    setShowAddModal(false);
  };

  const handleConfirmDelete = async () => {
    if (!colorToDelete) return;

    try {
      const isUsed = await VariantService.colorUsed(colorToDelete);

      if (isUsed) {
        toast.warning(
          `Cannot delete "${colorToDelete.toUpperCase()}" because it's currently used in one or more product variants.`
        );
        setColorToDelete(null);
        return;
      }

      const updated = { ...colors };
      delete updated[colorToDelete];
      updateColors(updated);
      setColorToDelete(null);
      toast.success("Color deleted successfully.");
    } catch (err) {
      toast.error("Failed to delete color.");
      console.error("Error during color deletion check:", err);
    }
  };

  return (
    <Box sx={{ p: 3 }}>
      <Typography
        variant="h6"
        fontFamily="'Poppins', sans-serif"
        fontWeight={400}
        gutterBottom
        mt={1}
      >
        COLOR PALETTE MANAGER
      </Typography>

      <Divider sx={{ mb: 2 }} />

      <Stack
        direction={isSmallScreen ? "column" : "row"}
        spacing={2}
        alignItems={isSmallScreen ? "stretch" : "center"}
        justifyContent="space-between"
        sx={{ mb: 2 }}
      >
        <Typography
          variant="body2"
          color="text.secondary"
          sx={{ fontWeight: 300 }}
        >
          Click on a color to modify it
        </Typography>

        <TextField
          size="small"
          variant="outlined"
          placeholder="Search category"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          InputProps={{
            startAdornment: (
              <InputAdornment position="start">
                <SearchIcon fontSize="small" />
              </InputAdornment>
            ),
            sx: {
              backgroundColor: "rgba(0, 0, 0, 0.03)",
              backdropFilter: "blur(4px)",
              borderRadius: 2,
            },
          }}
          sx={{
            flexGrow: 1,
            minWidth: isSmallScreen ? "100%" : 300,
            "& .MuiOutlinedInput-root": {
              backgroundColor: "rgba(255,255,255,0.04)",
            },
          }}
        />

        <Button
          variant="outlined"
          startIcon={<AddIcon />}
          size="small"
          onClick={() => setShowAddModal(true)}
          sx={{ alignSelf: isSmallScreen ? "stretch" : "auto" }}
        >
          ADD COLOR
        </Button>
      </Stack>

      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 2 }}>
        {Object.entries(filteredColors).map(([name]) => {
          const chipColor = getChipColor(name);
          const isValid = isValidCssColor(chipColor);
          const needsBorder = isLightColor(chipColor);

          return (
            <Tooltip
              key={name}
              title={
                <Box display="flex" flexDirection="column">
                  <Typography variant="caption" fontWeight={500}>
                    {name.toUpperCase()}
                  </Typography>
                  <Typography variant="caption" color="text.main">
                    {isValid ? chipColor.toUpperCase() : "Invalid Color"}
                  </Typography>
                </Box>
              }
              arrow
              enterTouchDelay={50}
            >
              <Box
                sx={{
                  position: "relative",
                  width: 40,
                  height: 40,
                  borderRadius: "50%",
                  backgroundColor: isValid ? chipColor : "transparent",
                  border: `2px ${isValid
                      ? needsBorder
                        ? "solid #999"
                        : "solid #ccc"
                      : "dashed #aaa"
                    }`,
                  display: "flex",
                  alignItems: "center",
                  justifyContent: "center",
                  fontSize: "0.6rem",
                  color: theme.palette.text.secondary,
                  cursor: "pointer",
                  transition: "all 0.2s",
                  "&:hover": {
                    transform: "scale(1.2)",
                  },
                  "&:hover .delete-icon": {
                    opacity: 1,
                    pointerEvents: "auto",
                  },
                }}
                onClick={() => setEditingColorName(name)}
              >
                {!isValid && "?"}
                <IconButton
                  className="delete-icon"
                  size="small"
                  sx={{
                    position: "absolute",
                    top: -6,
                    right: -6,
                    opacity: 0,
                    pointerEvents: "none",
                    transition: "opacity 0.3s ease",
                    color: theme.palette.mode === "dark" ? "#fff" : "#333",
                    backgroundColor: theme.palette.background.paper,
                    border: "1px solid rgba(0,0,0,0.1)",
                    boxShadow: 1,
                    "&:hover": {
                      backgroundColor: theme.palette.error.main,
                      color: "#fff",
                    },
                    width: 20,
                    height: 20,
                  }}
                  onClick={(e) => {
                    e.stopPropagation();
                    setColorToDelete(name);
                  }}
                >
                  <CloseIcon fontSize="inherit" />
                </IconButton>
              </Box>
            </Tooltip>
          );
        })}
      </Box>

      {/* Edit Modal */}
      {editingColorName && (
        <EditColorModal
          open={!!editingColorName}
          initialName={editingColorName}
          initialValue={colors[editingColorName]}
          existingNames={Object.keys(colors)}
          onClose={() => setEditingColorName(null)}
          onSave={handleEditSave}
        />
      )}

      {/* Add Modal */}
      {showAddModal && (
        <AddColorModal
          open={showAddModal}
          existingNames={Object.keys(colors)}
          onClose={() => setShowAddModal(false)}
          onSave={handleAddSave}
        />
      )}

      {/* Delete Confirmation Popup */}
      <ConfirmationPopup
        open={!!colorToDelete}
        onClose={() => setColorToDelete(null)}
        onConfirm={handleConfirmDelete}
        title="Delete Color?"
        message={
          <Typography>
            Are you sure you want to delete{" "}
            <strong>{colorToDelete?.toUpperCase()}</strong> from your palette?
          </Typography>
        }
        confirmButtonText="Delete"
        confirmColor="error"
      />
    </Box>
  );
};

export default ColorPaletteManager;
