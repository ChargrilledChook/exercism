export const gigasecond = (time) => {
  return new Date(time.getTime() + gigaConverter);
};

export const gigaConverter = Math.pow(10, 12);
