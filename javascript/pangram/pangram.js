export const isPangram = (sentence) => {
  if (!sentence) return false;

  const alphabet = "abcdefghijklmnopqrstuvwxyz";
  const sortedSentence = sentence.toLowerCase().split("").sort();
  const uniqueLetters = new Set(sortedSentence);
  return [...uniqueLetters].join("").replace(/[^\a-z]/gi, "") === alphabet;
};
