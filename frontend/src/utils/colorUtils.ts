const DEFAULT_KNOWN_COLORS: Record<string, string> = {
  "White": "#FFFFFF",
  "Black": "#000000",
  "Navy Blue": "#000080",
  "Red": "#FF0000",
  "Dark Green": "#006400",
  "Brown": "#A52A2A",
  "Gray": "#808080",
  "Pink": "#FFC0CB",
  "Orange": "#FFA500",
  "Yellow": "#FFFF00",
  "Purple": "#800080",
  "Light Blue": "#ADD8E6",
  "Olive Green": "#808000",
  "Maroon": "#800000",
  "Teal": "#008080",
  "Beige": "#F5F5DC",
  "Khaki": "#F0E68C",
  "Magenta": "#FF00FF",
  "Cyan": "#00FFFF",
  "Gold": "#FFD700"
};

const LOCAL_STORAGE_KEY = "customColors";

export const getKnownColors = (): Record<string, string> => {
  const stored = localStorage.getItem(LOCAL_STORAGE_KEY);
  try {
    return stored ? JSON.parse(stored) : { ...DEFAULT_KNOWN_COLORS };
  } catch {
    return { ...DEFAULT_KNOWN_COLORS };
  }
};

export const printColors = () => {
  const knownColors = getKnownColors();
  for (const [colorName, colorCode] of Object.entries(knownColors)) {
    console.log(`${colorName}: ${colorCode}`);
  }
};

export const saveKnownColors = (colors: Record<string, string>) => {
  localStorage.setItem(LOCAL_STORAGE_KEY, JSON.stringify(colors));
};

export const resetKnownColors = () => {
  localStorage.removeItem(LOCAL_STORAGE_KEY);
};

export const getChipColor = (color: string): string => {
  const knownColors = getKnownColors();

  // Find matching key in a case-insensitive way
  const matchedKey = Object.keys(knownColors).find(
    (key) => key.toLowerCase() === color.toLowerCase()
  );

  if (matchedKey) {
    return knownColors[matchedKey];
  }

  // If no match, assume the color string itself is valid (hex, etc)
  
  return color;
};

export const isValidCssColor = (hex: string): boolean => {
  const hexRegex = /^#?([0-9A-Fa-f]{3}|[0-9A-Fa-f]{6})$/;
  return hexRegex.test(hex);
};

export const isLightColor = (color: string): boolean => {
  const knownColors = getKnownColors();

  let hex = color.startsWith("#") ? color.slice(1) : color;

  if (!color.startsWith("#") && knownColors[color.toLowerCase()]) {
    hex = knownColors[color.toLowerCase()].slice(1);
  }

  if (hex.length === 3) {
    hex = hex.split("").map((c) => c + c).join(""); // expand shorthand
  }

  if (hex.length !== 6) return false;

  const r = parseInt(hex.substring(0, 2), 16);
  const g = parseInt(hex.substring(2, 4), 16);
  const b = parseInt(hex.substring(4, 6), 16);
  const luminance = 0.299 * r + 0.587 * g + 0.114 * b;

  return luminance > 200;
};
