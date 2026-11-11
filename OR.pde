class OR {
  float x, y, w, h;

  boolean localI0 = false;
  boolean localI1 = false;

  Boolean mainI0 = null;
  Boolean mainI1 = null;

  String info = " ";
  String i0 = " ";
  String i1 = " ";

  OR(float posX, float posY, float lebar, float tinggi) {
    x = posX;
    y = posY;
    w = lebar;
    h = tinggi;
  }

  void setI0(Boolean value) {
    mainI0 = value;
  }

  void setI1(Boolean value) {
    mainI1 = value;
  }

  boolean getI0() {
    if (mainI0 != null) {
      return mainI0;
    }
    return localI0;
  }

  boolean getI1() {
    if (mainI1 != null) {
      return mainI1;
    }
    return localI1;
  }

  boolean getOutputOR() {
    return getI0() || getI1();
  }

  void update() {
    if (getI0()) {
      i0 = "ON";
    } else {
      i0 = "OFF";
    }

    if (getI1()) {
      i1 = "ON";
    } else {
      i1 = "OFF";
    }

    if (getOutputOR()) {
      info = "ON";
    } else {
      info = "OFF";
    }
  }

  void display() {
    update();
    
    strokeWeight(2);
    strokeJoin(ROUND);
    stroke(0);

    //garis input dan output
    line(x + w*0.15, y + h*0.25, x - 5, y + h*0.25);
    line(x + w*0.15, y + h*0.75, x - 5, y + h*0.75);
    line(x + w, y + h*0.5, x + w + 20, y + h*0.5);

    //gambar gerbang or
    fill(0, 0, 255);
    beginShape();
    vertex(x, y);
    bezierVertex(x+w*0.5, y, x + w*0.8, y + h*0.15, x + w, y + h*0.5);
    bezierVertex(x+w*0.8, y+h*0.85, x + w*0.5, y + h, x, y + h);
    bezierVertex(x+w*0.2, y + h*0.8, x + w*0.2, y + h*0.2, x, y);
    endShape(CLOSE);

    //Label
   // fill(0);
    //textSize(h/5);
    //textAlign(CENTER, CENTER);
    //text("OR", x + w*0.45, y);
    //textAlign(LEFT, BASELINE);

    //textSize(h/6);
    //text(i0, x - 25, y + 0.20*h);
    //text(i1, x - 25, y + 0.70*h);
    //text(info, x + w, y + 0.45*h);
  }
  void cekKlik() {
    if (mainI0 == null) {
      if(mouseX > x-10 && mouseX < x + w*0.15 && mouseY > y+h/5 && mouseY < y+h/3) {
        localI0 =! localI0;
      }
    }
    if (mainI1 == null) {
      if(mouseX > x-10 && mouseX < x + w*0.15 && mouseY > y+h*2/3 && mouseY < y+h*4/5) {
        localI1 =! localI1;
      }
    }
  }
}
