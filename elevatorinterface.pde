// Chris Brandt - R11566140

import controlP5.*;
ControlP5 cp5;
int fq[] = new int[3];

void setup() {
  size(290, 400);
  cp5 = new ControlP5(this);
  fq[0] = 0;
  fq[1] = 0;
  fq[2] = 0;

  fill(0);
  text("Chris Brandt", 1, 10);
  text("*Floor*", 47, 275);
  cp5.addButton("f2").setSize(50, 20).setPosition(40, 280);
  cp5.addButton("f1").setSize(50, 20).setPosition(40, 320);
  cp5.addButton("B").setSize(50, 20).setPosition(40, 360);

  line(105, 263, 105, 387);
  text("*Special*", 122, 275);
  cp5.addButton("Close").setSize(50, 20).setPosition(120, 280);
  cp5.addButton("Open").setSize(50, 20).setPosition(120, 320);
  cp5.addButton("ClearQ").setSize(50, 20).setPosition(120, 360);

  line(185, 263, 185, 387);
  text("*Emergency*", 193, 275);
  cp5.addButton("Fire").setSize(50, 20).setPosition(200, 280);
  cp5.addButton("CallHelp").setSize(50, 20).setPosition(200, 320);

  fill(255);
  stroke(0);
  rect(40, 85, 210, 130);
  fill(0);
  text("Elevator TS!", 115, 160);
  textSize(48);
  text("B", 50, 125);
  text("1", 135, 125);
  text("2", 220, 125);
  noStroke();
}

void draw() {}

// Button events
void B() {
  fq[0] = (fq[0] == 0) ? 1 : 0;
  updown(0);
}

void f1() {
  fq[1] = (fq[1] == 0) ? 1 : 0;
  updown(1);
}

void f2() {
  fq[2] = (fq[2] == 0) ? 1 : 0;
  updown(2);
}

void Close() {
  delay(450);
}

void Open() {
  delay(450);
}

void ClearQ() {
  updown(-1);
}

void Fire() {
  delay(100);
  textSize(20);
  text("Help is on the way.", 70, 180);
}

void CallHelp() {
  delay(100);
  textSize(20);
  text("Help is on the way.", 70, 180);
}

void updown(int f) {
  delay(450);
  if(fq[2] == 1) {
    fill(222, 243, 255);
    circle(230, 110, 40);
    fill(0);
    textSize(48);
    text("2", 220, 125);
  } 
  if(fq[1] == 1) {
    fill(222, 243, 255);
    circle(147.5, 110, 40);
    fill(0);
    textSize(48);
    text("1", 135, 125);
  } 
  if(fq[0] == 1) {
    fill(222, 243, 255);
    circle(64, 110, 40);
    fill(0);
    textSize(48);
    text("B", 50, 125);
  } 
  
  if(f == 2) {
    fill(255);
    circle(147.5, 110, 40);
    circle(64, 110, 40);
    fill(0);
    textSize(48);
    text("1", 135, 125);
    text("B", 50, 125);
    fq[1] = fq[0] = 0;
  }
  else if(f == 1) {
    fill(255);
    circle(230, 110, 40);
    circle(64, 110, 40);
    fill(0);
    textSize(48);
    text("2", 220, 125);
    text("B", 50, 125);
    fq[0] = fq[2] = 0;
  }
  else if(f == 0) {
    fill(255);
    circle(230, 110, 40);
    circle(147.5, 110, 40);
    fill(0);
    textSize(48);
    text("2", 220, 125);
    text("1", 135, 125);
    fq[1] = fq[2] = 0;
  }
  else {
    fill(255);
    circle(64, 110, 40);
    circle(230, 110, 40);
    circle(147.5, 110, 40);
    fill(0);
    textSize(48);
    text("2", 220, 125);
    text("1", 135, 125);
    text("B", 50, 125);
    fq[1] = fq[2] = 0;
  }
}
