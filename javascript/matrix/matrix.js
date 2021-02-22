export class Matrix {
  constructor(stringMatrix) {
    this.matrix = this.initialise(stringMatrix);
  }

  get rows() {
   return this.matrix
  }

  get columns() {
    const columnMatrix = this._cloneMatrix();
    for(let i = 0; i < this.matrix[0].length; i++) {
      for(let j = 0; j < this.matrix[0].length; j++) {
        columnMatrix[i][j] = this.matrix[j][i];
      }
    }
    console.log(columnMatrix)
    return columnMatrix;
  }

  initialise(input) {
   const rows = input.split("\n");
   return rows.map(row => row.split(' ').map(val => Number(val)));
  }

  _cloneMatrix(matrix = this.matrix) {
    return JSON.parse(JSON.stringify(matrix));
  }
}
