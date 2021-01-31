export const planetRatios = {
  earth: 1.0,
  mercury: 0.2408467,
  venus: 0.61519726,
  mars: 1.8808158,
  jupiter: 11.862615,
  saturn: 29.447498,
  uranus: 84.016846,
  neptune: 164.79132,
};

export const earthYear = 31_557_600;

export const age = function ageOnPlanet(planet, time) {
  return parseFloat((time / earthYear / planetRatios[planet]).toFixed(2));
};
