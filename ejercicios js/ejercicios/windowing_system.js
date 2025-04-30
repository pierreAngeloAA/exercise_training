class Car {
  constructor() {
    this._mileage = 0;
  }

  get mileage() {
    return this._mileage;
  }

  set mileage(value) {
    throw new Error(`Mileage cannot be manipulated, ${value} is ignored.`);
    // Just an example, usually you would not provide a setter in this case.
  }
}

class Size{
  constructor(width,height){
    this.width = width;
    this.height = height;
  }

  set resize({newWidth, newHeight}){
    this.width = newWidth;
    this.height = newHeight;
  }
}

let size = new Size(1080, 764);
console.log(size.width);
console.log(size.height);


class Position {
  constructor(x = 0, y = 0) {
    this.x = x;
    this.y = y;
  }

  move(newX, newY) {
    this.x = newX;
    this.y = newY;
  }
}


class ProgramWindow{
  constructor(){
    this.screenSize = new Size(800,600);
    this.size = new Size();
    this.position = new Position(); 
  }
  
  resize(newSize) {
    const maxWidth = this.screenSize.width - this.position.x;
    const maxHeight = this.screenSize.height - this.position.y;
  
    let width = newSize.width;
    let height = newSize.height;
  
    if (width < 1) {
      width = 1;
    } else if (width > maxWidth) {
      width = maxWidth;
    }
  
    if (height < 1) {
      height = 1;
    } else if (height > maxHeight) {
      height = maxHeight;
    }
  
    this.size = new Size(width, height);
  }


  move(newPosition) {
    let newX = newPosition.x;
    let newY = newPosition.y;
  
    if (newX < 0) {
      newX = 0;
    }
  
    if (newY < 0) {
      newY = 0;
    }
  
    if (newX + this.size.width > this.screenSize.width) {
      newX = this.screenSize.width - this.size.width;
    }
  
    if (newY + this.size.height > this.screenSize.height) {
      newY = this.screenSize.height - this.size.height;
    }
  
    this.position.x = newX;
    this.position.y = newY;
  }
  
}


function changeWindow(window) {
  const newSize = new Size(400, 300);
  const newPosition = new Position(100, 150);

  window.resize(newSize);
  window.move(newPosition);

  return window;
}


const programWindow = new ProgramWindow();
console.log(programWindow.screenSize.height);