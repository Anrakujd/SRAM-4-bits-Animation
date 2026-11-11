class Seven_Segment {
  int x;
  int y;
  int w;
  float h;
  boolean isOn = false;
  boolean aOn = false;
  boolean bOn = false;
  boolean cOn = false;
  boolean dOn = false;
  boolean eOn = false;
  boolean fOn = false;
  boolean gOn = false;
  boolean dpOn = false;

  Seven_Segment(int posX, int posY, int Lebar) {
    x = posX;
    y = posY;
    w = Lebar;
    h = 1.5*w;
  }

  void display() {
    fill(0);
    stroke(255);
    strokeWeight(4);
    rect(x, y, w+w/3, h+w/5, w/10, w/10, w/10, w/10);
    stroke(0);
    strokeWeight(1);
    //for ( int i=0; i < 8; i++) {
      //line(x, h / 7 + y + i * ( h / 10 ), x - 10, h / 7 + y + i * ( h / 10) );
   // }

    display_a(aOn);
    display_b(bOn);
    display_c(cOn);
    display_g(dOn);
    display_d(eOn);
    display_e(fOn);
    display_f(gOn);
    display_dp(dpOn);
  }

  boolean aOn() {
    return aOn;
  }
  boolean bOn() {
    return bOn;
  }
  boolean cOn() {
    return cOn;
  }
  boolean dOn() {
    return dOn;
  }
  boolean eOn() {
    return eOn;
  }
  boolean fOn() {
    return fOn;
  }
  boolean gOn() {
    return gOn;
  }
  boolean dpOn() {
    return dpOn;
  }

  void display_a(boolean aOn) {
    if (aOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w/4, y+w/10, w-w/3, h/10, h/20, h/20, h/20, h/20);
  }

  void display_b(boolean bOn) {
    if (bOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w - w/12, y+w/6, h/10, w-w/3, h/20, h/20, h/20, h/20);
  }

  void display_c(boolean cOn) {
    if (cOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w - w/12, y+h/1.8, h/10, w-w/3, h/20, h/20, h/20, h/20);
  }

  void display_d(boolean dOn) {
    if (dOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w/4, (y+h) - w/10, w-w/3, h/10, h/20, h/20, h/20, h/20);
  }

  void display_e(boolean eOn) {
    if (eOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w/10, y+h/1.8, h/10, w-w/3, h/20, h/20, h/20, h/20);
  }

  void display_f(boolean fOn) {
    if (fOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w/10, y+w/6, h/10, w-w/3, h/20, h/20, h/20, h/20);
  }

  void display_g(boolean gOn) {
    if (gOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    rect(x+w/4, y+h/2, w-w/3, h/10, h/20, h/20, h/20, h/20);
  }

  void display_dp(boolean dpOn) {
    if (dpOn) {
      fill(255, 0, 0);
      stroke(0);
      strokeWeight(0);
    } else {
      fill(80);
      stroke(255, 0, 0);
      strokeWeight(0);
    }
    ellipse(x+w*1.2, y+h, w/10, w/10);
  }
}
