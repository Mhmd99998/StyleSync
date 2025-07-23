const sizeOrder = [
  "XXS",
  "XS",
  "S",
  "S-M",
  "S/M",
  "M",
  "L",
  "L-XL",
  "L/XL",
  "XL",
  "XXL",
  "XXXL",
  "XXXXL",
  "2XL",
  "3XL",
  "4XL",
];

export const sortSizes = (sizes: string[]): string[] => {
  const labeledSizes: string[] = [];
  const numericSizes: number[] = [];
  const otherSizes: string[] = [];

  sizes.forEach((size) => {
    const upperSize = size.toUpperCase().trim();

    if (sizeOrder.includes(upperSize)) {
      labeledSizes.push(upperSize);
    } else if (!isNaN(Number(upperSize))) {
      numericSizes.push(Number(upperSize));
    } else {
      otherSizes.push(size);
    }
  });

  const sortedLabeled = labeledSizes.sort(
    (a, b) => sizeOrder.indexOf(a) - sizeOrder.indexOf(b)
  );
  const sortedNumeric = numericSizes
    .sort((a, b) => a - b)
    .map((n) => n.toString());
  const sortedOthers = otherSizes.sort();

  return [...sortedLabeled, ...sortedNumeric, ...sortedOthers];
};
