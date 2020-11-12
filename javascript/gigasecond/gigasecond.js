export const gigasecond = (time) => {
  const giga = 1_000_000_000 * 1000;
  return new Date(time.getTime() + giga);
};
