export const decodedValue = (colours) => {
 const legend = {
   black: '0',
   brown: '1',
   red: '2',
   orange: '3',
   yellow: '4',
   green: '5',
   blue: '6',
   violet: '7',
   grey: '8',
   white: '9'
 }

return Number(legend[colours[0]] + legend[colours[1]]);
};
