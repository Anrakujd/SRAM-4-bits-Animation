class NOT {
  float x, y, w, h;

  boolean localI0 = false;
  Boolean mainI0 = null;

  String info = " ";
  String i0 = " ";

  NOT(float posX, float posY, float lebar, float tinggi) {
    x = posX;
    y = posY;
    w = lebar;
    h = tinggi;
  }

  void setI0(Boolean value) {
    mainI0 = value;
  }

  boolean getI0() {
    if (mainI0 != null) {
      return mainI0;
    }
    return localI0;
  }

  boolean getOutputNOT() {
    return !getI0();
  }

  void update() {
    if (getI0()) {
      i0 = "ON";
    } else {
      i0 = "OFF";
    }

    if (getOutputNOT()) {
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

    line(x, y + h*0.5, x - 20, y + h*0.5);
    line(x + w + 12, y + h*0.5, x + w + 30, y + h*0.5);

    fill(255, 0, 0);
    beginShape();
    vertex(x, y);
    vertex(x + w, y + h*0.5);
    vertex(x, y + h);
    endShape(CLOSE);

    fill(255);
    stroke(0);
    strokeWeight(2);
    ellipse(x + w + 6, y + h*0.5, 12, 12);

    //fill(0);
    //textSize(h/5);
    //textAlign(CENTER, CENTER);
    //text("NOT", x + w*0.35, y + h*0.5);
    //textAlign(LEFT, BASELINE);

    //textSize(14);
     // text(i0, x - 25, y + 0.45*h);
     // text(info, x + w + 15, y + 0.45*h);
  }
  
  void cekKlik() {
    if (mainI0 == null) {
      if(mouseX > x-20 && mouseX < x && mouseY > y+h*0.4 && mouseY < y+h*0.6) {
        localI0 =! localI0;
      }
    }
  }
}
