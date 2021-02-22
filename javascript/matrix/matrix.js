
export class Matrix {
  constructor(stringMatrix) {
    this.matrix = this.initialise(stringMatrix);
  }

  get rows() {
   return this.matrix
  }

  get columns() {
    throw new Error('Remove this statement and implement this function');
  }

  initialise(input) {
   const rows = input.split("\n");
   return rows.map(row => row.split(' ').map(val => Number(val)));
  }
}
