import React from 'react';
import { Button, ButtonProps } from '@mui/material';

const UnderlinedButton: React.FC<ButtonProps> = ({ children, sx, ...props }) => {
  return (
    <Button
      {...props}
      sx={{
        position: 'relative',
        color: 'text.primary',
        backgroundColor: 'transparent',
        '&:hover': {
          backgroundColor: 'transparent',
        },
        '&::after': {
          content: '""',
          position: 'absolute',
          left: '50%',
          bottom: 0,
          transform: 'translateX(-50%) scaleX(0)',
          width: '90%',
          height: '2px',
          backgroundColor: 'secondary.main',
          transition: 'transform 0.3s ease',
          transformOrigin: 'center',
        },
        '&:hover::after': {
          transform: 'translateX(-50%) scaleX(1)',
        },
        ...sx,
      }}
    >
      {children}
    </Button>
  );
};

export default UnderlinedButton;
