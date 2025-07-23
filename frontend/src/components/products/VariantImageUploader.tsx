import React, { useState } from 'react';
import {
  Box, Typography, Grid, IconButton, CircularProgress, Chip, useTheme
} from '@mui/material';
import { Close, CloudUpload } from '@mui/icons-material';
import ImageService from '../../services/ImageService';
import S3Service from '../../services/S3Service';
import { toast } from 'material-react-toastify';
import { ImageDto } from '../../models/Image';
import { getChipColor, isLightColor } from '../../utils/colorUtils'; // adjust path if needed

interface Props {
  colorGroups: Record<string, string[]>; // color -> variantIds[]
  existingImages: Record<string, ImageDto[]>; // variantId -> images
  onUpdateImages: (variantId: string, images: ImageDto[]) => void;
}

const VariantImageUploader: React.FC<Props> = ({ colorGroups, existingImages, onUpdateImages }) => {
  const [uploadingColor, setUploadingColor] = useState<string | null>(null);
  const [deletingImageId, setDeletingImageId] = useState<string | null>(null);
  const theme = useTheme();

  const handleUpload = async (color: string, variantIds: string[], event: React.ChangeEvent<HTMLInputElement>) => {
    const files = event.target.files;
    if (!files || files.length === 0) return;

    setUploadingColor(color);

    try {
      const uploadedImages = await Promise.all(
        Array.from(files).map((file) => ImageService.uploadImage(variantIds[0], file))
      );

      variantIds.forEach(variantId => {
        const currentImages = existingImages[variantId] || [];
        const updatedImages = [...currentImages, ...uploadedImages];
        onUpdateImages(variantId, updatedImages);
      });

      toast.success(`Uploaded images for color: ${color}`);
    } catch (error) {
      console.error(error);
      toast.error(`Failed to upload images for color: ${color}`);
    } finally {
      setUploadingColor(null);
    }
  };

  const handleDeleteImage = async (variantId: string, image: ImageDto) => {
    setDeletingImageId(image.imageId);

    try {
      await S3Service.delete({ url: image.imageUrl });
      await ImageService.deleteImage(image.imageId);

      const updatedImages = (existingImages[variantId] || []).filter(img => img.imageId !== image.imageId);
      onUpdateImages(variantId, updatedImages);

      toast.success('Image deleted successfully');
    } catch (error) {
      console.error(error);
      toast.error('Failed to delete image');
    } finally {
      setDeletingImageId(null);
    }
  };

  return (
    <Box sx={{ mt: 3 }}>
      <Typography variant="h6" gutterBottom>
        Upload Images by Color
      </Typography>

      {Object.entries(colorGroups).map(([color, variantIds]) => {
        const chipColor = getChipColor(color);
        const isLight = isLightColor(chipColor);

        return (
          <Box
            key={color}
            sx={{
              mb: 4,
              p: 2,
              border: `1px solid ${theme.palette.secondary.main}`,
              borderRadius: 1,
            }}
          >
            <Box sx={{ display: 'flex', alignItems: 'center', mb: 1 }}>
              <Typography variant="subtitle1" sx={{ textTransform: 'capitalize', mr: 1 }}>
                {color}
              </Typography>
              <Chip
                size="small"
                sx={{
                  backgroundColor: chipColor,
                  color: isLight ? 'black' : 'white',
                }}
                label=""
              />
            </Box>

            <Grid container spacing={2}>
              {(existingImages[variantIds[0]] || []).map(image => (
                <Grid item xs={6} sm={3} key={image.imageId}>
                  <Box
                    sx={{
                      position: 'relative',
                      width: '100%',
                      paddingTop: '125%', // 4:5 aspect ratio
                      cursor: 'pointer',
                      border: image.isDefault ? `2px solid ${theme.palette.primary.main}` : 'none',
                      borderRadius: 2,
                    }}
                    onClick={async () => {
                      if (image.isDefault) return; // already default, no action
                      try {
                        await ImageService.setImageAsDefault(variantIds[0], image.imageId);

                        const updatedImages = (existingImages[variantIds[0]] || []).map(img => ({
                          ...img,
                          isDefault: img.imageId === image.imageId
                        }));

                        onUpdateImages(variantIds[0], updatedImages);
                        toast.success("Default image updated");
                      } catch (error) {
                        console.error(error);
                        toast.error("Failed to set default image");
                      }
                    }}
                  >
                    <img
                      src={image.imageUrl}
                      alt="Variant"
                      style={{
                        position: 'absolute',
                        top: 0,
                        left: 0,
                        width: '100%',
                        height: '100%',
                        objectFit: 'contain',
                        borderRadius: 8,
                        backgroundColor: '#f5f5f5',
                      }}
                    />
                    {/* Delete Button */}
                    <IconButton
                      size="small"
                      onClick={(e) => {
                        e.stopPropagation();
                        handleDeleteImage(variantIds[0], image);
                      }}
                      sx={{
                        position: 'absolute',
                        top: 4,
                        right: 4,
                        backgroundColor: 'rgba(0,0,0,0.5)',
                        color: 'white',
                      }}
                      disabled={deletingImageId === image.imageId}
                    >
                      {deletingImageId === image.imageId ? <CircularProgress size={18} /> : <Close />}
                    </IconButton>

                    {/* Default Tag */}
                    {image.isDefault && (
                      <Chip
                        label="Default"
                        size="small"
                        sx={{
                          position: 'absolute',
                          bottom: 6,
                          left: 6,
                          backgroundColor: theme.palette.primary.main,
                          color: 'white',
                          fontWeight: 'bold',
                          fontSize: 12,
                        }}
                      />
                    )}
                  </Box>
                </Grid>
              ))}

              <Grid item xs={6} sm={3}>
                <IconButton
                  component="label"
                  sx={{
                    width: '100%',
                    paddingTop: '125%',
                    border: '1px dashed #ccc',
                    borderRadius: 2,
                    position: 'relative',
                  }}
                >
                  {uploadingColor === color ? (
                    <CircularProgress size={24} sx={{ position: 'absolute', top: '45%', left: '45%' }} />
                  ) : (
                    <CloudUpload sx={{ position: 'absolute', top: '45%', left: '45%' }} />
                  )}
                  <input type="file" hidden multiple accept="image/*" onChange={(e) => handleUpload(color, variantIds, e)} />
                </IconButton>
              </Grid>
            </Grid>
          </Box>
        );
      })}
    </Box>
  );
};

export default VariantImageUploader;
