class BCD {
  int x;
  int y;
  float w;
  float h;

  boolean inputA;
  boolean inputB;
  boolean inputC;
  boolean inputD;

  boolean aOn;
  boolean bOn;
  boolean cOn;
  boolean dOn;
  boolean eOn;
  boolean fOn;
  boolean gOn;
  boolean dpOn;

  BCD(int posX, int posY, int lebar) {
    x = posX;
    y = posY;
    w = lebar;
    h = 0.5*lebar;
  }

  void display() {
    fill(255);
    stroke(0);
    strokeWeight(2);
    rect(x, y, w, h);
    fill(0);
    textSize(14);
    text("74LS47", x+h/1.5, y+w/4);
    text("BCD", x+h/1.2, y+w/3);
    for ( int i=0; i < 8; i++) {
      line(x +h/7 + i * (h/5), y, x +h/7 + i * (h/5), y - h / 5 );
    }
    for ( int i=0; i < 4; i++) {
      line(x +h/2 + i * (h/5), y+h, x + h/2 + i * (h/5), y+h + h / 5 );
    }
  }

  //set input kaki A, B, C dan D
  void setInputA(boolean value) {
    inputA = value;
  }
  void setInputB(boolean value) {
    inputB = value;
  }
  void setInputC(boolean value) {
    inputC = value;
  }
  void setInputD(boolean value) {
    inputD = value;
  }

  // logika bcd dan output
  void update() {
    // led A
    if ((!inputA && !inputB && !inputC && !inputD)||
      (!inputA && !inputB && inputC && !inputD)||
      (!inputA && !inputB && inputC && inputD) ||
      (!inputA && inputB && !inputC && inputD) ||
      (!inputA && inputB && inputC && !inputD) ||
      (!inputA && inputB && inputC && inputD) ||
      (inputA && !inputB && !inputC && !inputD) ||
      (inputA && !inputB && !inputC && inputD) ||
      (inputA && !inputB && inputC && !inputD) ||
      (inputA && inputB && !inputC && !inputD) ||
      (inputA && inputB && inputC && !inputD) ||
      (inputA && inputB && inputC && inputD)) {
      aOn = true;
    } else {
      aOn = false;
    }
    //leb B
    if ((!inputA && !inputB && !inputC && !inputD)||
      (!inputA && !inputB && !inputC && inputD)||
      (!inputA && !inputB && inputC && !inputD) ||
      (!inputA && !inputB && inputC && inputD) ||
      (!inputA && inputB && !inputC && !inputD) ||
      (!inputA && inputB && inputC && inputD) ||
      (inputA && !inputB && !inputC && !inputD) ||
      (inputA && !inputB && !inputC && inputD) ||
      (inputA && !inputB && inputC && !inputD) ||
      (inputA && inputB && !inputC && inputD) ) {
      bOn = true;
    } else {
      bOn = false;
    }
    //leb C
    if ((!inputA && !inputB && !inputC && !inputD)|| //1
      (!inputA && !inputB && !inputC && inputD)|| //2
      (!inputA && !inputB && inputC && inputD) || //3
      (!inputA && inputB && !inputC && !inputD)|| //4
      (!inputA && inputB && !inputC && inputD) || //5
      (!inputA && inputB && inputC && !inputD) || //6
      (!inputA && inputB && inputC && inputD)  || //7
      (inputA && !inputB && !inputC && !inputD)|| //8
      (inputA && !inputB && !inputC && inputD) || //9
      (inputA && !inputB && inputC && !inputD) || //10
      (inputA && !inputB && inputC && inputD)  || //11
      (inputA && inputB && !inputC && inputD)     //12
      ) {
      cOn = true;
    } else {
      cOn = false;
    }
    //leb D
    if ((!inputA && !inputB && !inputC && !inputD)|| //1
      (!inputA && !inputB && inputC && !inputD)|| //2
      (!inputA && !inputB && inputC && inputD) || //3
      (!inputA && inputB && !inputC && inputD)|| //4
      (!inputA && inputB && inputC && !inputD) || //5
      (inputA && !inputB && !inputC && !inputD) || //6
      (inputA && !inputB && !inputC && inputD)  || //7
      (inputA && !inputB && inputC && inputD)|| //8
      (inputA && inputB && !inputC && !inputD) || //9
      (inputA && inputB && !inputC && inputD) || //10
      (inputA && inputB && inputC && !inputD)   //11
      ) {
      dOn = true;
    } else {
      dOn = false;
    }
    //leb E
    if ((!inputA && !inputB && !inputC && !inputD)|| //1
      (!inputA && !inputB && inputC && !inputD)|| //2
      (!inputA && inputB && inputC && !inputD) || //3
      (inputA && !inputB && !inputC && !inputD)|| //4
      (inputA && !inputB && inputC && !inputD) || //5
      (inputA && !inputB && inputC && inputD) || //6
      (inputA && inputB && !inputC && !inputD)  || //7
      (inputA && inputB && !inputC && inputD)|| //8
      (inputA && inputB && inputC && !inputD) || //9
      (inputA && inputB && inputC && inputD)  //10
      ) {
      eOn = true;
    } else {
      eOn = false;
    }
    //leb f
    if ((!inputA && !inputB && !inputC && !inputD)|| //1
      (!inputA && inputB && !inputC && !inputD)|| //2
      (!inputA && inputB && !inputC && inputD) || //3
      (!inputA && inputB && inputC && !inputD)|| //4
      (inputA && !inputB && !inputC && !inputD) || //5
      (inputA && !inputB && !inputC && inputD) || //6
      (inputA && !inputB && inputC && !inputD)  || //7
      (inputA && !inputB && inputC && inputD)  || //8
      (inputA && inputB && !inputC && !inputD) || //9
      (inputA && inputB && inputC && !inputD)  || //10
      (inputA && inputB && inputC && inputD)   //11
      ) {
      fOn = true;
    } else {
      fOn = false;
    }
    //leb g
    if ((!inputA && !inputB && inputC && !inputD)||
      (!inputA && !inputB && inputC && inputD) ||
      (!inputA && inputB && !inputC && inputD) ||
      (!inputA && inputB && !inputC && !inputD)||
      (!inputA && inputB && inputC && !inputD) ||
      (inputA && !inputB && !inputC && !inputD)||
      (inputA && !inputB && !inputC && inputD) ||
      (inputA && !inputB && inputC && !inputD) ||
      (inputA && !inputB && inputC && inputD)  ||
      (inputA && inputB && inputC && !inputD)  ||
      (inputA && inputB && inputC && inputD)   ||
      (inputA && inputB && !inputC && inputD)
      ) {
      gOn = true;
    } else {
      gOn = false;
    }
  }

  boolean aout() {
    return aOn;
  }
  boolean bout() {
    return bOn;
  }
  boolean cout() {
    return cOn;
  }
  boolean dout() {
    return dOn;
  }
  boolean eout() {
    return eOn;
  }
  boolean fout() {
    return fOn;
  }
  boolean gout() {
    return gOn;
  }
  boolean adpout() {
    return dpOn;
  }
}
