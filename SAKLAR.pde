class SAKLAR {
  float x;
  float y;
  float w;
  float h;
  boolean isOn = false;

  //variabel untuk animasi
  float sliderY;
  float glowAlpha = 0;

  float R = 200;
  float G = 50;
  float B = 60;

  //warna untuk lerp
  float targetR, targetG, targetB;

  SAKLAR(float posX, float posY, float lebar, float tinggi) {
    x = posX;
    y = posY;
    w = lebar;
    h = tinggi;
    sliderY = y + h * 0.10;
  }

  void hover() {
    boolean isHover = mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h;

    if (isOn) {
      if (isHover) {
        targetR = 60;
        targetG = 240;
        targetB = 120;
      } else {
        targetR = 40;
        targetG = 200;
        targetB = 90;
      }
    } else {
      if (isHover) {
        targetR = 240;
        targetG = 70;
        targetB = 80;
      } else {
        targetR = 190;
        targetG = 40;
        targetB = 50;
      }
    }
  }

  boolean getOutput() {
    return isOn;
  }


  // Fungsi interaksi klik saklar
  void cekKlik() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      isOn = !isOn;
    }
  }

  void display() {
    hover();

    //Hitung gerakan turun/naik (lerp)
    float targetY;
    if (isOn) {
      targetY = y + h * 0.55;
    } else {
      targetY = y + h * 0.10;
    }
    sliderY = lerp(sliderY, targetY, 0.25);

    //transisi ganti warna
    R = lerp(R, targetR, 0.15);
    G = lerp(G, targetG, 0.15);
    B = lerp(B, targetB, 0.15);

    //efek cahaya
    float targetAlpha;
    if (isOn) {
      targetAlpha = 255;
    } else {
      targetAlpha = 0;
    }
    glowAlpha = lerp(glowAlpha, targetAlpha, 0.2);

    //kotak saklar (abu-abu gelap)
    noStroke();
    fill(50, 52, 60);
    rect(x, y, w, h, 2);



    //jalur tengah
    fill(25, 27, 30);
    rect(x + w * 0.15, y + h * 0.05, w * 0.7, h * 0.9, 1);

    fill(255);
    textSize(w/4);
    textAlign(CENTER, CENTER);
    text("ON", x + w / 2, y + h/3.4);
    text("OFF", x + w / 2, y + h/1.4);
    textAlign(LEFT, BASELINE);

    //lapisan pendaran hijau
    if (glowAlpha > 1) {
      noStroke();
      fill(40, 240, 100, glowAlpha * 0.15);
      rect(x + w * 0.1 - 4, sliderY - 4, w * 0.8 + 8, h * 0.35 + 8, 4);

      fill(40, 240, 100, glowAlpha * 0.08);
      rect(x + w * 0.1 - 8, sliderY - 8, w * 0.8 + 16, h * 0.35 + 16, 6);

      fill(40, 240, 100, glowAlpha * 0.03);
      rect(x + w * 0.1 - 14, sliderY - 14, w * 0.8 + 28, h * 0.35 + 28, 8);
    }

    //tombol slider
    fill(R, G, B);
    rect(x + w * 0.1, sliderY, w * 0.8, h * 0.35, 2);

    //garis di atas tombol
    stroke(0, 40);
    strokeWeight(2);
    line(x + w*0.2, sliderY + h*0.175, x + w*0.8, sliderY + h*0.175);
  }
}
