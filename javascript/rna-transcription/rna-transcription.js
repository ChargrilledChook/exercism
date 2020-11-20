export const toRna = (dnaString) => {
  if (!dnaString) return "";

  let result = dnaString.split("").map((letter) => dnaKey[letter]);
  return result.join("");
};

export const dnaKey = {
  G: "C",
  C: "G",
  T: "A",
  A: "U",
};
