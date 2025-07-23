import React from "react";
import {
  Card,
  CardContent,
  Typography,
  SxProps,
  Theme,
  useTheme,
  useMediaQuery,
  Box,
} from "@mui/material";
import UnderlinedButton from "../shared/UnderlinedButton";

interface FeaturedCardProps {
  name: string;
  imageUrl?: string;
  onImageClick?: () => void;
  sx?: SxProps<Theme>;
}

const FeaturedCard: React.FC<FeaturedCardProps> = ({
  name,
  imageUrl,
  onImageClick,
  sx,
}) => {
  const theme = useTheme();
  const isMobile = useMediaQuery(theme.breakpoints.down("sm"));

  return (
    <Card
      sx={{
        width: "100%",
        aspectRatio: "1 / 1.4",
        borderRadius: 1,
        overflow: "hidden",
        cursor: "pointer",
        border: "0.3px solid",
        borderColor: "secondary.main",
        transition: "transform 0.3s ease",
        "&:hover": {
          transform: "scale(1.02)",
        },
        ...sx,
      }}
    >
      {/* Image Container */}
      <Box
        onClick={onImageClick}
        sx={{
          height: "75%",
          width: "100%",
          display: "flex",
          alignItems: "center",
          justifyContent: "center",
          backgroundColor: theme.palette.grey[100], // subtle bg to fill gaps
        }}
      >
        <Box
          component="img"
          src={imageUrl || "https://placehold.co/600x850@2x.png"}
          alt={name}
          sx={{
            maxHeight: "100%",
            maxWidth: "100%",
            objectFit: "contain",
            borderRadius: 0.5,
          }}
        />
      </Box>

      {/* Text and Button */}
      <CardContent
        sx={{
          height: "28%",
          display: "flex",
          flexDirection: "column",
          alignItems: "center",
          justifyContent: "center",
          px: 2,
          py: 1,
          "&:last-child": { pb: 1 },
          gap: 1,
        }}
      >
        <Typography
          variant="subtitle1"
          sx={{
            fontWeight: 500,
            fontSize: isMobile ? "0.95rem" : "1.05rem",
            textAlign: "center",
            whiteSpace: "nowrap",
            overflow: "hidden",
            textOverflow: "ellipsis",
          }}
        >
          {name}
        </Typography>

        <UnderlinedButton
          onClick={onImageClick}
          sx={{
            fontWeight: 500,
            fontSize: isMobile ? "0.75rem" : "0.85rem",
            px: 2.5,
            py: 0.5,
            color: "secondary.dark",
          }}
        >
          SHOP NOW
        </UnderlinedButton>
      </CardContent>
    </Card>
  );
};

export default FeaturedCard;
