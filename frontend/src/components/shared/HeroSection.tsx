import { Box, Typography } from "@mui/material";
import UnderlinedButton from "./UnderlinedButton";

interface HeroSectionProps {
  onScrollToFeaturedProducts: () => void;
}

const HeroSection: React.FC<HeroSectionProps> = ({ onScrollToFeaturedProducts }) => {
  return (
    <Box
      sx={{
        height: { xs: "50vh", md: "70vh" },
        backgroundImage: 'url(/assets/hero3.jpg)',
        backgroundSize: "cover",
        backgroundPosition: "center",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        flexDirection: "column",
        textAlign: "center",
        color: "white",
        px: 2, // some horizontal padding for smaller screens
      }}
    >
      <Typography
        variant="h2"
        fontWeight={600}
        sx={{
          fontFamily: 'Raleway, sans-serif',
          mb: 2,
          textShadow: "2px 2px 5px rgba(0, 0, 0, 0.8)",
          WebkitTextStroke: "1px rgba(0, 0, 0, 0.6)",
          textStroke: "1px rgba(0, 0, 0, 0.6)",
          fontSize: {
            xs: "1.8rem",  // small devices
            sm: "2.5rem",  // tablets
            md: "3.5rem",  // medium+ screens
          },
        }}
      >
        ELEVATE YOUR EVERYDAY
      </Typography>
      <UnderlinedButton
        variant="outlined"
        size="large"
        sx={{
          color: "white",
          border: "0.2px solid"
        }}
        onClick={onScrollToFeaturedProducts}
      >
        SHOP NOW
      </UnderlinedButton>
    </Box>
  );
};

export default HeroSection;
