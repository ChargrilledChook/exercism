export const decodedValue = (colours) => {
  return colorCode(colours[0]) * 10 + colorCode(colours[1])
};

export const colorCode = (index) => {
  return COLORS.indexOf(index);
};

export const COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];
