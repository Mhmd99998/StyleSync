import React, { useState, useMemo, useEffect, useRef } from "react";
import {
  Box,
  InputBase,
  Paper,
  IconButton,
  List,
  Popper,
  ClickAwayListener,
} from "@mui/material";
import SearchIcon from "@mui/icons-material/Search";
import debounce from "lodash/debounce";
import SearchService from "../../services/SearchService";
import { IndexedProductDto } from "../../models/Search";
import SearchListItem from "./SearchListItem";
import { useNavigate } from "react-router-dom";

interface SearchBarProps {
  onClose?: () => void;
}

const SearchBar: React.FC<SearchBarProps> = ({ onClose }) => {
  const navigate = useNavigate();

  const [searchTerm, setSearchTerm] = useState<string>("");
  const [results, setResults] = useState<IndexedProductDto[]>([]);
  const anchorRef = useRef<HTMLDivElement | null>(null);

  const debouncedSearch = useMemo(
    () =>
      debounce(async (term: string) => {
        if (!term.trim()) {
          setResults([]);
          return;
        }

        try {
          const res = await SearchService.search(term.trim());
          setResults(res);
        } catch (err) {
          console.error("Search error:", err);
        }
      }, 300),
    []
  );

  useEffect(() => {
    debouncedSearch(searchTerm);
    return () => debouncedSearch.cancel();
  }, [searchTerm, debouncedSearch]);

  const handleClickAway = () => {
    setResults([]);
  };

  return (
    <ClickAwayListener onClickAway={handleClickAway}>
      <Box sx={{ position: "relative", width: "100%", maxWidth: 950 }}>

        <Paper
          ref={anchorRef}
          sx={{
            p: 1.5,
            mb: 0.4,
            borderRadius: 1,
            display: 'flex',
            alignItems: 'center',
            backgroundColor: 'background.paper',
            boxShadow: '0px 2px 8px rgba(0,0,0,0.05)',
            border: '1px solid',
            borderColor: 'primary.main',
            opacity: 0.8
          }}
        >
          <InputBase
            placeholder="Search for products..."
            fullWidth
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            sx={{
              ml: 2,
              flex: 1,
              fontSize: 16,
            }}
          />
          <IconButton
            onClick={() => {
              if (searchTerm.trim()) {
                navigate(`/search?query=${encodeURIComponent(searchTerm.trim())}`);
                if (onClose) onClose();
                setResults([]);
              }
            }}
          >
            <SearchIcon sx={{ color: 'primary.main' }} />
          </IconButton>
        </Paper>

        {/* Result Dropdown */}
        <Popper
          open={results.length > 0}
          anchorEl={anchorRef.current}
          placement="bottom-start"
          sx={{
            zIndex: 1200,
            mt: 1,
            width: anchorRef.current ? anchorRef.current.clientWidth : undefined,
          }}
        >
          <Paper
            sx={{
              maxHeight: 260,
              overflowY: "auto",
              borderRadius: 2,
              backgroundColor: "background.paper",
              boxShadow: 3,
            }}
          >
            <List>
              {results.map((product) => (
                <SearchListItem
                  key={product.id}
                  product={product}
                  onClick={() => {
                    navigate(`/products/${product.id}`);
                    setSearchTerm("");
                    setResults([]);
                  }}
                />
              ))}
            </List>
          </Paper>
        </Popper>
      </Box>
    </ClickAwayListener>
  );
};

export default SearchBar;
