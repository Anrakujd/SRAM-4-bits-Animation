class AND {

  float x, y, w, h;

  boolean localI0 = false;
  boolean localI1 = false;
  Boolean mainI0 = null;
  Boolean mainI1 = null;

  String info = "OFF";
  String i0 = "OFF";
  String i1 = "OFF";

  AND(float posX, float posY, float lebar, float tinggi) {
    x = posX;
    y = posY;
    w = lebar;
    h = tinggi;
  }

  void setI0(boolean value) {
    mainI0 = value;
  }

  void setI1(boolean value) {
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

  boolean getOutputAND() {
    return getI0() && getI1();
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

    if (getOutputAND()) {
      info = "ON";
    } else {
      info = "OFF";
    }
  }

  void display() {

    update();

    float r = h / 2;
    float boxW = w - r;

    strokeWeight(2);
    stroke(0);
    line(x, y-h/4, x-20, y-h/4);
    line(x, y+h/4, x-20, y+h/4);
    line(x+w, y, x+w+20, y );

    noStroke();
    fill(0, 255,0);
    beginShape();
    vertex(x, y-r);
    vertex(x + boxW, y-r);
    vertex(x + boxW, y+r);
    vertex(x, y+r);
    endShape(CLOSE);
    arc(x + boxW, y, h, h, -HALF_PI, HALF_PI);

    stroke(0);
    noFill();
    line(x, y-r, x, y+r);
    line(x, y-r, x + boxW, y-r);
    line(x, y+r, x + boxW, y+r);
    arc(x + boxW, y, h, h, -HALF_PI, HALF_PI);

    //fill(0);
    //textSize(h/5);
    //textAlign(CENTER, CENTER);
    //text("AND", x + w/2, y);

    //textAlign(LEFT, BASELINE);
    //textSize(h/6);
    //text(i0, x-30, y-h/3);
    //text(i1, x-30, y+h/5);
    //text(info, x+w+5, y-5);
  }

  void cekKlik() {
    if (mainI0 == null) {
      if (mouseX > x-20 && mouseX < x && mouseY > y-h/3 && mouseY < y-h/5) {
        localI0 = !localI0;
      }
    }
    if (mainI1 == null) {
      if (mouseX > x-20 && mouseX < x && mouseY > y+h/5 && mouseY < y+h/3) {
        localI1 = !localI1;
      }
    }
  }
}
