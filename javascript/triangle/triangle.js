export class Triangle {
  constructor(a, b, c) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.sides = [this.a, this.b, this.c]
  }

  isEquilateral() {
    if(this._notValidTriangle()) return false;

    return this.a == this.b && this.b == this.c;
  }

  isIsosceles() {
    if(this._notValidTriangle()) return false;

    let res = [...new Set(this.sides)];

    return res.length < 3;
  }

  isScalene() {
    if(this._notValidTriangle()) return false;

    let res = [...new Set(this.sides)];

    return res.length === 3;
  }

  _notValidTriangle(){
    if(this.sides.some((side) => side === 0 )) return true;
    if(!this._sideEquality()) return true;

    return false;
  }

  _sideEquality(){
    return this.a + this.b >= this.c && this.a + this.c >= this.b && this.b + this.c >= this.a;
  }
}
