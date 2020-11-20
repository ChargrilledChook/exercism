//
// This is only a SKELETON file for the 'RNA Transcription' exercise. It's been provided as a
// convenience to get you started writing code faster.
//

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
