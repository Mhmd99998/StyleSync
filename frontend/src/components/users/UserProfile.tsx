import React, { useEffect, useState } from 'react';
import {
  Box,
  Typography,
  Paper,
  Grid,
  Button,
  CircularProgress,
  useTheme,
} from '@mui/material';
import { useNavigate } from 'react-router-dom';
import { useSelector } from 'react-redux';
import ArrowBackIcon from '@mui/icons-material/ArrowBack';
import { RootState } from '../../redux/store';
import UserService from '../../services/UserService';
import Navbar from '../shared/Navbar';
import UnderlinedButton from '../shared/UnderlinedButton';

interface User {
  userId: string;
  email: string;
  firstName: string;
  lastName: string;
  createdAt: string;
  isEmailVerified: boolean;
  role: 'customer' | 'admin';
}

const UserProfile: React.FC = () => {
  const navigate = useNavigate();
  const theme = useTheme();
  const userId = useSelector((state: RootState) => state.user.userId);
  const [user, setUser] = useState<User | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchUser = async () => {
      if (!userId) return;
      try {
        const data = await UserService.getUserById(userId);
        setUser(data);
      } catch (error) {
        console.error('Failed to fetch user:', error);
      } finally {
        setLoading(false);
      }
    };

    if (userId) {
      fetchUser();
    }
  }, [userId]);

  if (loading) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 10 }}>
        <CircularProgress />
      </Box>
    );
  }

  if (!user) {
    return (
      <Box sx={{ display: 'flex', justifyContent: 'center', py: 10 }}>
        <Typography variant="h6" color="error">
          User not found.
        </Typography>
      </Box>
    );
  }

  return (
    <>
      <Navbar />
      <Box sx={{ px: { xs: 2, md: 6 }, py: 4, maxWidth: '100vw' }}>
        <UnderlinedButton startIcon={<ArrowBackIcon />} onClick={() => navigate(-1)} sx={{ mb: 3 }}>
          Back
        </UnderlinedButton>

        <Paper elevation={3} sx={{ p: 4, borderRadius: 2, width: '100%' }}>
          <Typography variant="h4" sx={{ mb: 3, fontWeight: 500 }}>
            User Profile
          </Typography>

          <Grid container spacing={3}>
            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                First Name
              </Typography>
              <Typography variant="body1">{user.firstName}</Typography>
            </Grid>

            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                Last Name
              </Typography>
              <Typography variant="body1">{user.lastName}</Typography>
            </Grid>

            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                Email
              </Typography>
              <Typography variant="body1">{user.email}</Typography>
            </Grid>

            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                Email Verified
              </Typography>
              <Typography variant="body1">
                {user.isEmailVerified ? 'Yes' : 'No'}
              </Typography>
            </Grid>

            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                Role
              </Typography>
              <Typography variant="body1" sx={{ textTransform: 'capitalize' }}>
                {user.role}
              </Typography>
            </Grid>

            <Grid item xs={12} md={6}>
              <Typography variant="subtitle2" color="textSecondary">
                Member Since
              </Typography>
              <Typography variant="body1">
                {new Date(user.createdAt).toLocaleDateString()}
              </Typography>
            </Grid>
          </Grid>
        </Paper>
      </Box>
    </>
  );
};

export default UserProfile;
