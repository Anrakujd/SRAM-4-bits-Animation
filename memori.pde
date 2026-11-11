// +++++++++++++++++++++++++++++++++++++
// +++++ PROGAM ANIMASI SRAM 4 BIT +++++
// +++++   dibuat oleh Djukarna    +++++
// +++++      FKIP - UNPAR         +++++
// +++++++++++++++++++++++++++++++++++++


AND and01;
AND and02;
AND and03;

AND and11;
AND and12;
AND and13;

AND and21;
AND and22;
AND and23;

AND and31;
AND and32;
AND and33;

BCD bcd;
BCD bcd2;
Seven_Segment display;
Seven_Segment display2;

OR or0;
OR or1;
OR or2;
OR or3;

NOT not01;
NOT not02;

NOT not11;
NOT not12;

NOT not21;
NOT not22;

NOT not31;
NOT not32;

SAKLAR data0;
SAKLAR data1;
SAKLAR data2;
SAKLAR data3;

SAKLAR ctrl;

LAMPU Q0;
LAMPU Q1;
LAMPU Q2;
LAMPU Q3;

int l = 1200;
int w = 800;

void settings(){
  size(l,w);
}

void setup() {
  and01 = new AND(700, 147, 50, 50);
  and02 = new AND(480, 137, 50, 50);
  and03 = new AND(480, 210, 50, 50);
  or0 = new OR(580, 100, 50, 50);
  not01 = new NOT(600, 200, 20, 20);
  not02 = new NOT(400, 187, 20, 20);
  
  and11 = new AND(700, 307, 50, 50);
  and12 = new AND(480, 297, 50, 50);
  and13 = new AND(480, 379, 50, 50);
  or1 = new OR(580, 260, 50, 50);
  not11 = new NOT(600, 369, 20, 20);
  not12 = new NOT(400, 356, 20, 20);
  
  and21 = new AND(700, 477, 50, 50);
  and22 = new AND(480, 467, 50, 50);
  and23 = new AND(480, 549, 50, 50);
  or2 = new OR(580, 430, 50, 50);
  not21 = new NOT(600, 539, 20, 20);
  not22 = new NOT(400, 526, 20, 20);
  
  and31 = new AND(700, 647, 50, 50);
  and32 = new AND(480, 643, 50, 50);
  and33 = new AND(480, 719, 50, 50);
  or3 = new OR(580, 606, 50, 50);
  not31 = new NOT(600, 709, 20, 20);
  not32 = new NOT(400, 696, 20, 20);
  
  data0 = new SAKLAR(50, 50, 20, 40);
  data1 = new SAKLAR(100, 50, 20, 40);
  data2 = new SAKLAR(150, 50, 20, 40);
  data3 = new SAKLAR(200, 50, 20, 40);
  
  ctrl = new SAKLAR(270, 50, 20, 40);
  
  Q0 = new LAMPU(830, 132, 30, 30);
  Q1 = new LAMPU(830, 292, 30, 30);
  Q2 = new LAMPU(830, 462, 30, 30);
  Q3 = new LAMPU(830, 632, 30, 30); 
  
  display = new Seven_Segment(40, 500, 70);
  display2 = new Seven_Segment(925, 325, 70);
  bcd = new BCD(300, 300, 300);    // tidak ditampilkan (run under background)
  bcd2 = new BCD(300, 200, 400);
}

void draw() {
  background(200);
  fill(0);
  textSize(40);
  text("SRAM 4 bit ANIMATION", 500, 50);
  textSize(24);
  text("A3     A2     A1     A0       Write", 50, 40);
  text("Input Data", 40, 650);
  textSize(14);
  text("by Djukarna, 2026", 500, 770);
  
  display.display();
  display.display_a(bcd.aout());
  display.display_b(bcd.bout());
  display.display_c(bcd.cout());
  display.display_d(bcd.dout());
  display.display_e(bcd.eout());
  display.display_f(bcd.fout());
  display.display_g(bcd.gout());
  
  display2.display();
  display2.display_a(bcd2.aout());
  display2.display_b(bcd2.bout());
  display2.display_c(bcd2.cout());
  display2.display_d(bcd2.dout());
  display2.display_e(bcd2.eout());
  display2.display_f(bcd2.fout());
  display2.display_g(bcd2.gout());
  
  and01.display();
  and02.display();
  and03.display();
  or0.display();
  not01.display();
  not02.display();
  
  and11.display();
  and12.display();
  and13.display();
  or1.display();
  not11.display();
  not12.display();
  
  and21.display();
  and22.display();
  and23.display();
  or2.display();
  not21.display();
  not22.display();
  
  and31.display();
  and32.display();
  and33.display();
  or3.display();
  not31.display();
  not32.display();
  
  data0.display();
  data1.display();
  data2.display();
  data3.display();
  ctrl.display();
  
  Q0.display(and01.getOutputAND());
  Q1.display(and11.getOutputAND());
  Q2.display(and21.getOutputAND());
  Q3.display(and31.getOutputAND());
  
  bcd2.setInputA(and01.getOutputAND());
  bcd2.setInputB(and11.getOutputAND());
  bcd2.setInputC(and21.getOutputAND());
  bcd2.setInputD(and31.getOutputAND());
  bcd2.update();
  
  bcd.setInputA(data0.getOutput());
  bcd.setInputB(data1.getOutput());
  bcd.setInputC(data2.getOutput());
  bcd.setInputD(data3.getOutput());
  bcd.update();
  
  
    
  //pengkabelan
  //group1
  or0.setI1(and02.getOutputAND());
  or0.setI0(and01.getOutputAND());
  not01.setI0(and03.getOutputAND());
  and01.setI0(not01.getOutputNOT());
  and01.setI1(or0.getOutputOR());
  and02.setI0(ctrl.getOutput());
  and02.setI1(data0.getOutput());
  and03.setI0(not02.getOutputNOT());
  and03.setI1(ctrl.getOutput());
  not02.setI0(data0.getOutput());
  
  //group2
  or1.setI1(and12.getOutputAND());
  or1.setI0(and11.getOutputAND());
  not11.setI0(and13.getOutputAND());
  and11.setI0(not11.getOutputNOT());
  and11.setI1(or1.getOutputOR());
  and12.setI0(ctrl.getOutput());
  and12.setI1(data1.getOutput());
  and13.setI0(not12.getOutputNOT());
  and13.setI1(ctrl.getOutput());
  not12.setI0(data1.getOutput());
  
  //group3
  or2.setI1(and22.getOutputAND());
  or2.setI0(and21.getOutputAND());
  not21.setI0(and23.getOutputAND());
  and21.setI0(not21.getOutputNOT());
  and21.setI1(or2.getOutputOR());
  and22.setI0(ctrl.getOutput());
  and22.setI1(data2.getOutput());
  and23.setI0(not22.getOutputNOT());
  and23.setI1(ctrl.getOutput());
  not22.setI0(data2.getOutput());
  
  //group3
  or3.setI1(and32.getOutputAND());
  or3.setI0(and31.getOutputAND());
  not31.setI0(and33.getOutputAND());
  and31.setI0(not31.getOutputNOT());
  and31.setI1(or3.getOutputOR());
  and32.setI0(ctrl.getOutput());
  and32.setI1(data3.getOutput());
  and33.setI0(not32.getOutputNOT());
  and33.setI1(ctrl.getOutput());
  not32.setI0(data3.getOutput());
  
  //Garis penghubung
  stroke(255,0,0);
  line(278, 90, 278, 750);
  line(278, 222, 459, 222);
  line(278, 124, 459, 124);
  ellipse(278, 124, 5, 5);
  ellipse(278, 222, 5, 5);
  
  line(278, 391, 459, 391);
  line(278, 284, 459, 284);
  ellipse(278, 284, 5, 5);
  ellipse(278, 391, 5, 5);
  
  line(278, 561, 459, 561);
  line(278, 454, 459, 454);
  ellipse(278, 454, 5, 5);
  ellipse(278, 561, 5, 5);
  
  line(278, 731, 459, 731);
  line(278, 630, 459, 630);
  ellipse(278, 630, 5, 5);
  ellipse(278, 731, 5, 5);
  
  stroke(0, 0, 255);
  line(60,90,60,500);
  line(110,90,110,500);
  line(160,90,160,550);
  line(210,90,210,654);
  line(160, 550, 136, 550);
  line(210, 600, 136, 600);
  ellipse(210, 600, 5, 5);
  
  
  line(60, 149, 459, 149);
  ellipse(60, 149, 5, 5);
  line(110, 309, 459, 309);
  ellipse(110, 309, 5, 5);
  line(160, 479, 459, 479);
  ellipse(160, 479, 5, 5);
  line(210, 655, 459, 655);
 // ellipse(210, 655, 5, 5);
  line(378, 149, 378, 197);
  ellipse(378, 149, 5, 5);
  line(378, 309, 378, 367);
  ellipse(378, 309, 5, 5);
  line(378, 479, 378, 536);
  ellipse(378, 479, 5, 5);
  line(378, 654, 378, 706);
  ellipse(378, 654, 5, 5);
  
  stroke(0);
  line(440, 197, 470, 197);
  line(440, 366, 470, 366);
  line(440, 536, 470, 536);
  line(440, 706, 470, 706);
  
  line(550, 137, 580, 137);
  line(550, 210, 580, 210);
  line(550, 297, 580, 297);
  line(550, 379, 580, 379);
  line(550, 467, 580, 467);
  line(550, 549, 580, 549);
  line(550, 643, 580, 643);
  line(550, 719, 580, 719);
  
  line(650, 719, 670, 719);
  line(670, 719, 670, 659);
  line(670, 659, 685, 659);
  
  line(650, 549, 670, 549);
  line(670, 549, 670, 489);
  line(670, 489, 685, 489);
  
  line(650, 631, 680, 631);
  line(680, 631, 680, 633);
  
  line(650, 125, 680, 125);
  line(680, 125, 680, 133);
  line(650, 210, 680, 210);
  line(680, 210, 680, 159);
  
  line(650, 455, 680, 455);
  line(680, 455, 680, 464);
  
  line(650, 285, 680, 285);
  line(680, 285, 680, 293);
  line(650, 379, 680, 379);
  line(680, 379, 680, 320);
  
  line(755, 147, 830, 147);
  line(755, 307, 830, 307);
  line(755, 477, 830, 477);
  line(755, 647, 830, 647);
  
  line(800, 147, 800, 75);
  ellipse(800, 147, 5, 5);
  line(800, 75, 565, 75);
  line(565, 75, 565, 112);
  line(565, 112, 574, 112);
  
  line(800, 307, 800, 235);
  ellipse(800, 307, 5, 5);
  line(800, 235, 565, 235);
  line(565, 235, 565, 272);
  line(565, 272, 574, 272);
  
  line(800, 477, 800, 410);
  ellipse(800, 477, 5, 5);
  line(800, 410, 565, 410);
  line(565, 410, 565, 442);
  line(565, 442, 574, 442);
  
  line(800, 647, 800, 580);
  ellipse(800, 647, 5, 5);
  line(800, 580, 565, 580);
  line(565, 580, 565, 618);
  line(565, 618, 574, 618);
}


void mousePressed() {
  data0.cekKlik();
  data1.cekKlik();
  data2.cekKlik();
  data3.cekKlik();
  ctrl.cekKlik(); 
}
