export const steps = (input) => {
  if (input < 1) throw 'Only positive numbers are allowed';
  if (input === 1)  return 0;

  if (input % 2 === 0) {
    let res = input / 2;
    return 1 + steps(res)
  } else {
    let res = input * 3 + 1;
    return 1 + steps(res)
  }
};
