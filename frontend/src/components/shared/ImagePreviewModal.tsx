import React, { useEffect, useState } from 'react';
import {
  Dialog,
  DialogContent,
  Box,
  IconButton,
  Typography,
  useTheme,
} from '@mui/material';
import CloseIcon from '@mui/icons-material/Close';
import ArrowBackIosNewIcon from '@mui/icons-material/ArrowBackIosNew';
import ArrowForwardIosIcon from '@mui/icons-material/ArrowForwardIos';
import { ImageDto } from '../../models/Image';

interface ImagePreviewModalProps {
  open: boolean;
  images: ImageDto[];
  initialImage?: string;
  onClose: () => void;
}

const ImagePreviewModal: React.FC<ImagePreviewModalProps> = ({
  open,
  images,
  initialImage,
  onClose,
}) => {
  const initialIndex = initialImage
    ? images.findIndex(img => img.imageUrl === initialImage)
    : 0;

  const [currentIndex, setCurrentIndex] = useState<number>(
    initialIndex >= 0 ? initialIndex : 0
  );

  useEffect(() => {
    if (open) {
      setCurrentIndex(initialIndex >= 0 ? initialIndex : 0);
    }
  }, [initialIndex, open]);

  const handlePrev = () => {
    setCurrentIndex(prev => (prev - 1 + images.length) % images.length);
  };

  const handleNext = () => {
    setCurrentIndex(prev => (prev + 1) % images.length);
  };

  const handleSelect = (index: number) => {
    setCurrentIndex(index);
  };

  const theme = useTheme();

  return (
    <Dialog
      open={open}
      onClose={onClose}
      maxWidth="xl"
      fullWidth
      PaperProps={{
        sx: {
          backgroundColor: 'rgba(0, 0, 0, 0.6)',
          backdropFilter: 'blur(8px)',
          display: 'flex',
          justifyContent: 'center',
          alignItems: 'center',
          height: '95vh',
          margin: 'auto',
          borderRadius: 2,
        },
      }}
    >
      <DialogContent
        sx={{
          width: '100%',
          height: '100%',
          p: 0,
          position: 'relative',
        }}
      >
        {/* Close Button */}
        <IconButton
          onClick={onClose}
          sx={{
            position: 'absolute',
            top: 16,
            right: 16,
            zIndex: 10,
            backgroundColor: 'rgba(255,255,255,0.2)',
            color: '#fff',
            '&:hover': {
              backgroundColor: 'rgba(255,255,255,0.3)',
            },
          }}
        >
          <CloseIcon fontSize="large" />
        </IconButton>

        {/* Main Image Display */}
        <Box
          display="flex"
          flexDirection="column"
          justifyContent="center"
          alignItems="center"
          height="100%"
          px={3}
        >
          <Box
            component="img"
            src={images[currentIndex]?.imageUrl}
            alt="Preview"
            sx={{
              maxHeight: '70vh',
              maxWidth: '90vw',
              borderRadius: 2,
              objectFit: 'contain',
              mb: 2,
              boxShadow: 6,
            }}
          />

          {/* Pagination Buttons */}
          <Box
            display="flex"
            justifyContent="center"
            alignItems="center"
            gap={4}
            mt={2}
          >
            <IconButton
              onClick={handlePrev}
              sx={{
                color: '#fff',
                backgroundColor: 'rgba(0,0,0,0.4)',
                '&:hover': {
                  backgroundColor: 'rgba(0,0,0,0.6)',
                },
              }}
            >
              <ArrowBackIosNewIcon />
            </IconButton>
            <Typography
              fontSize="0.9rem"
              color="#fff"
              sx={{ minWidth: 100, textAlign: 'center' }}
            >
              {currentIndex + 1} of {images.length}
            </Typography>
            <IconButton
              onClick={handleNext}
              sx={{
                color: '#fff',
                backgroundColor: 'rgba(0,0,0,0.4)',
                '&:hover': {
                  backgroundColor: 'rgba(0,0,0,0.6)',
                },
              }}
            >
              <ArrowForwardIosIcon />
            </IconButton>
          </Box>

          {/* Thumbnails */}
          <Box
            display="flex"
            justifyContent="center"
            gap={1}
            flexWrap="wrap"
            px={2}
            mt={3}
            sx={{
              overflowX: 'auto',
              maxWidth: '90vw',
              scrollbarWidth: 'none',
              '&::-webkit-scrollbar': {
                display: 'none',
              },
            }}
          >
            {images.map((img, index) => (
              <Box
                key={img.imageId}
                component="img"
                src={img.imageUrl}
                alt="thumbnail"
                onClick={() => handleSelect(index)}
                sx={{
                  width: 80,
                  height: 80,
                  objectFit: 'cover',
                  borderRadius: 1,
                  border:
                    index === currentIndex
                      ? `2px solid ${theme.palette.primary.main}`
                      : '2px solid transparent',
                  cursor: 'pointer',
                  opacity: index === currentIndex ? 1 : 0.7,
                  transition: 'all 0.2s ease-in-out',
                }}
              />
            ))}
          </Box>
        </Box>
      </DialogContent>
    </Dialog>
  );
};

export default ImagePreviewModal;
