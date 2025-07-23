import React from 'react';
import { Box, Grid, Typography, useTheme } from '@mui/material';
import CheckCircleIcon from '@mui/icons-material/CheckCircle';

const features = [
  {
    title: 'Wide Range of Styles',
    description: 'From casual wear to formal attire, find the perfect outfit for every occasion.',
  },
  {
    title: 'High-Quality Materials',
    description: 'We source premium fabrics to ensure durability, comfort, and a luxurious feel.',
  },
  {
    title: 'Affordable Prices',
    description: 'Enjoy top-tier fashion without breaking the bank—style meets value.',
  },
];

const HighlightFeatures: React.FC = () => {
  const theme = useTheme();
  const iconColor = theme.palette.mode === 'light' ? 'primary' : 'white';

  return (
    <Box sx={{ py: { xs: 6, md: 4 }, px: { xs: 2, md: 2 }, backgroundColor: 'background.paper' }}>
      <Grid container spacing={4} justifyContent="center">
        {features.map((feature, index) => (
          <Grid item xs={12} md={4} key={index}>
            <Box display="flex" flexDirection="column" alignItems="center" textAlign="center">
              <CheckCircleIcon sx={{ fontSize: 40, mb: 2, color: { iconColor } }} />
              <Typography variant="h6" fontWeight={600} gutterBottom>
                {feature.title}
              </Typography>
              <Typography variant="body2" color="text.primary">
                {feature.description}
              </Typography>
            </Box>
          </Grid>
        ))}
      </Grid>
    </Box>
  );
};

export default HighlightFeatures;
