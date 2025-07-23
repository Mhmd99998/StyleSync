import React, { useEffect, useState } from "react";
import {
  Box,
  Typography,
  Button,
  Divider,
  useTheme,
  Paper,
  TextField,
  InputAdornment,
  IconButton,
  Stack,
} from "@mui/material";
import AddIcon from "@mui/icons-material/Add";
import SearchIcon from "@mui/icons-material/Search";
import CloseIcon from "@mui/icons-material/Close";
import { toast } from "material-react-toastify";
import CategoryService from "../../services/CategoryService";
import { CategoryDto } from "../../models/Category";
import CategoryModal from "./CategoryModal";
import ConfirmationPopup from "../shared/ConfirmationPopup";

const CategoryManager: React.FC = () => {
  const [categories, setCategories] = useState<CategoryDto[]>([]);
  const [filteredCategories, setFilteredCategories] = useState<CategoryDto[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [search, setSearch] = useState<string>("");
  const [categoryModalOpen, setCategoryModalOpen] = useState(false);
  const [categoryToEdit, setCategoryToEdit] = useState<CategoryDto | undefined>(undefined);
  const [modalMode, setModalMode] = useState<"add" | "edit">("add");
  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
  const [categoryToDelete, setCategoryToDelete] = useState<CategoryDto | null>(null);

  const theme = useTheme();

  useEffect(() => {
    fetchCategories();
  }, []);

  useEffect(() => {
    const delayDebounce = setTimeout(() => {
      const term = search.toLowerCase().trim();
      if (term === "") {
        setFilteredCategories(categories);
      } else {
        setFilteredCategories(
          categories.filter((cat) =>
            cat.name.toLowerCase().includes(term)
          )
        );
      }
    }, 400);

    return () => clearTimeout(delayDebounce);
  }, [search, categories]);

  const fetchCategories = async () => {
    try {
      const response = await CategoryService.getAllCategories();
      setCategories(response);
      setFilteredCategories(response);
    } catch (error) {
      console.error("Failed to fetch categories:", error);
    } finally {
      setLoading(false);
    }
  };

  const handleDeleteCategory = async () => {
    if (!categoryToDelete) return;

    try {
      const isUsed = await CategoryService.categoryUsed(categoryToDelete.categoryId);

      if (isUsed) {
        toast.warning(
          `Cannot delete "${categoryToDelete.name}" because it's currently used by one or more products.`
        );
        setDeleteDialogOpen(false);
        setCategoryToDelete(null);
        return;
      }

      await CategoryService.deleteCategory(categoryToDelete.categoryId);
      toast.success("Category deleted successfully!");
      setDeleteDialogOpen(false);
      setCategoryToDelete(null);
      fetchCategories(); // Refresh the list
    } catch (err) {
      toast.error("Failed to delete category");
      console.error("Error deleting category:", err);
    }
  };

  const openDeleteDialog = (category: CategoryDto) => {
    setCategoryToDelete(category);
    setDeleteDialogOpen(true);
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
        CATEGORY MANAGER
      </Typography>

      <Divider sx={{ mb: 2 }} />

      <Stack
        direction={{ xs: "column", sm: "row" }}
        spacing={2}
        alignItems={{ xs: "stretch", sm: "center" }}
        justifyContent="space-between"
        sx={{ mb: 2 }}
      >
        <Typography
          variant="body2"
          color="text.secondary"
          sx={{ fontWeight: 300 }}
        >
          Manage your product categories
        </Typography>

        <TextField
          size="small"
          variant="outlined"
          placeholder="Search category"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          fullWidth
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
            maxWidth: { xs: "100%", sm: 600 },
            "& .MuiOutlinedInput-root": {
              backgroundColor: "rgba(255,255,255,0.04)",
            },
          }}
        />

        <Button
          variant="outlined"
          startIcon={<AddIcon />}
          size="small"
          onClick={() => {
            setModalMode("add");
            setCategoryToEdit(undefined);
            setCategoryModalOpen(true);
          }}
          sx={{ alignSelf: { xs: "flex-start", sm: "center" } }}
        >
          ADD CATEGORY
        </Button>
      </Stack>

      <Box sx={{ display: "flex", flexWrap: "wrap", gap: 2 }}>
        {loading ? (
          <Typography>Loading...</Typography>
        ) : filteredCategories.length === 0 ? (
          <Typography>No categories found.</Typography>
        ) : (
          filteredCategories.map((category) => (
            <Paper
              key={category.name}
              elevation={2}
              sx={{
                position: "relative",
                px: 3,
                py: 1.5,
                borderRadius: 1,
                border: `1px solid ${theme.palette.divider}`,
                transition: "transform 0.2s",
                "&:hover": {
                  transform: "scale(1.05)",
                  borderColor: theme.palette.primary.main,
                },
                "&:hover .category-text::after": {
                  width: "90%",
                },
                "&:hover .delete-icon": {
                  opacity: 1,
                  pointerEvents: "auto",
                },
              }}
            >
              <IconButton
                className="delete-icon"
                size="small"
                sx={{
                  position: "absolute",
                  top: -10,
                  right: -10,
                  opacity: 0,
                  pointerEvents: "none",
                  zIndex: 2,
                  color: theme.palette.error.main,
                  backgroundColor: theme.palette.background.paper,
                  border: "1px solid rgba(0,0,0,0.1)",
                  boxShadow: 1,
                  transition: "opacity 0.3s ease",
                  width: 24,
                  height: 24,
                  "&:hover": {
                    backgroundColor: theme.palette.error.main,
                    color: "#fff",
                  },
                }}
                onClick={(e) => {
                  e.stopPropagation();
                  openDeleteDialog(category);
                }}
              >
                <CloseIcon fontSize="inherit" />
              </IconButton>

              <Box
                onClick={() => {
                  setModalMode("edit");
                  setCategoryToEdit(category);
                  setCategoryModalOpen(true);
                }}
              >
                <Typography
                  variant="body2"
                  fontWeight={500}
                  color="text.primary"
                  className="category-text"
                  sx={{
                    textTransform: "capitalize",
                    position: "relative",
                    cursor: "pointer",
                    "&::after": {
                      content: '""',
                      position: "absolute",
                      left: "50%",
                      bottom: 0,
                      transform: "translateX(-50%)",
                      width: "0%",
                      height: "2px",
                      backgroundColor: theme.palette.secondary.main,
                      transition: "width 0.25s ease-in-out",
                    },
                  }}
                >
                  {category.name}
                </Typography>
              </Box>
            </Paper>
          ))
        )}
      </Box>

      <CategoryModal
        open={categoryModalOpen}
        mode={modalMode}
        category={categoryToEdit}
        onClose={() => {
          setCategoryModalOpen(false);
          setCategoryToEdit(undefined);
        }}
        onSave={fetchCategories}
      />

      <ConfirmationPopup
        open={deleteDialogOpen}
        onClose={() => {
          setDeleteDialogOpen(false);
          setCategoryToDelete(null);
        }}
        onConfirm={handleDeleteCategory}
        title="Delete Category"
        message={
          <>
            Are you sure you want to delete <strong>{categoryToDelete?.name}</strong>?
            This action cannot be undone.
          </>
        }
        confirmButtonText="Delete"
        confirmColor="error"
      />
    </Box>
  );
};

export default CategoryManager;
