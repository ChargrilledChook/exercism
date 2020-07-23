// Uses a for loop and the map method to reverse the index of the array into the value of a map
export const colorCode = (index) => {
  
  let conductors = new Map();
  const colors = COLORS;

  for (let i = 0; i < colors.length; i++) {
    conductors.set(`${colors[i]}`, i)
  }
  return conductors.get(index);
};

export const COLORS = ["black","brown","red","orange","yellow","green","blue","violet","grey","white"];

