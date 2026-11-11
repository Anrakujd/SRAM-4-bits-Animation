class LAMPU {
  float x;
  float y;
  float w;
  float h;
  boolean isOn = false;

  LAMPU(float posX, float posY, float lebar, float tinggi) {
    x = posX;
    y = posY;
    w = lebar;
    h = tinggi;
  }

  // ambil nilai dari main!
  void display(boolean arusMasuk) {
    isOn = arusMasuk;
    display();
  }

  void display() {
    //Fitting Lampu
    noStroke();
    fill(80);
    rect(x, y + h * 0.25, w * 0.3, h * 0.5, 3);

    //Pendaran Cahaya
    if (isOn) {
      noStroke();
      fill(255, 255, 0, 60);
      ellipse(x + w * 0.7, y + h/2, w * 1.5, h * 1.5);
      fill(255, 255, 0, 20);
      ellipse(x + w * 0.7, y + h/2, w * 2.0, h * 2.0);
    }

    // 4. Menggambar Badan Kaca Bohlam
    strokeWeight(2);
    stroke(0);
    if (isOn) {
      fill(255, 255, 50);
    } else {
      fill(200, 200, 210);
    }
    ellipse(x + w * 0.7, y + h/2, w, h);

    // 5. Teks Status
    fill(0);
    textSize(h/6);
    textAlign(CENTER, CENTER);
    //if (isOn) {
      //text("MENYALA", x + w * 0.7, y + h + 15);
    //} else {
     // text("MATI", x + w * 0.7, y + h + 15);
   // }

    textAlign(LEFT, BASELINE);
  }
}
