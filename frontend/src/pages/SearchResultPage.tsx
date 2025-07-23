import { Box } from "@mui/material";
import Navbar from "../components/shared/Navbar";
import SearchLayout from "../components/shared/SearchLayout";

const SearchResultPage: React.FC = () => {
  return (
    <Box>
      <Navbar />
      <SearchLayout />
    </Box>
  );
};

export default SearchResultPage;
