//project
//battle cats
int catBase=0;
void setup() {
  size(2500, 1500);
  background(184, 219, 72);
  int dogeCount=int(random(2, 31));
  int catCount=int(random(2, 31));
  int count=0;
  fill(56, 204, 232);
  int gradientCount=0;
  while(gradientCount<200){
    fill(0,0,gradientCount+55);
    rect(0, 4*gradientCount, 2500, 4);
    gradientCount+=1;
  }
  
  pushMatrix();
  translate(-1500, -500);
  base(1500, 1000);
  while (count<dogeCount) {
    doge(random(900, 1200), random(700, 900));
    count++;
  }
  int cloudCount=int(random(5, 20));
  count=0;
  while (count<cloudCount) {
    clouds(random(0, 2500), random(300, 500));
    count++;
  }
  catBase=1;
  base(3650, 1000);
  count=0;
  while (count<catCount) {
    cat(random(1500, 1800), random(700, 900));
    count++;
  }
  fill(255, 255, 0);
  PFont font;
  font = createFont("Comic Sans MS", 128);
  textFont(font);
  textSize(200);
  text("Korea (Battle Cats)", 1500, 675);
  popMatrix();
}

void doge(float x, float y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(2);
  fill(255);
  face(x, y);
  fill(0);
  eyes(x, y);
  float count=1;
  fill(255);
  while (count<=4) {
    rect(x+count*25-15, y+115, 10, 10);
    count++;
  }
  triangle(x-40, y+40, x-10, y+60, x-10, y+80);
  fill(255, 0, 0);
  rect(x, y-50, 100, 25);
  fill(57, 255, 7);
  rect(x, y-50, random(1, 100), 25);
  fill(0);
  popMatrix();
}
void eyes(float x, float y) {
  circle(x+40, y+30, 8);
  circle(x+80, y+30, 8);
}

void face(float x, float y) {
  rect(x-10, y, 120, 120, 50);
  triangle(x+10, y+10, x+25, y-25, x+40, y+10);
  triangle(x+60, y+10, x+75, y-25, x+90, y+10);
  rect(x+70, y+60, 40, 30);
  line(x+70, y+75, x+110, y+75);
}

void cat(float x, float y) {
  pushMatrix();
  fill(255);
  translate(x, y);
  strokeWeight(2);
  int count=1;
  while (count<=4) {
    //triangle(x-55+count*20, y+50, x-47+count*20, y+70, x-39+count*20, y+50);
    rect(x-55+count*20, y+50, 10, 20);
    count++;
  }
  catFace(x, y);
  popMatrix();
}

void catFace(float x, float y) {
  circle(x, y, 120);
  noStroke();
  fill(200);
  circle(x, y, random(0, 50));
  strokeWeight(2);
  stroke(0);
  fill(255);
  fill(0);
  circle(x-40, y-20, 8);
  circle(x, y-20, 8);
  fill(255);
  catEars(x, y);
  ellipse(x-40, y+10, 30, 10);
}

void catEars(float x, float y) {
  triangle(x-36, y-50, x-28, y-75, x-20, y-50);
  triangle(x+4, y-50, x+12, y-75, x+20, y-50);
}

void clouds(float x, float y) {
  pushMatrix();
  translate(x, y);
  fill(255);
  noStroke();
  int count=0;
  while (count<2) {
    fill(random(200, 255));
    cloudSegments(x, y);
    count++;
  }
  fill(255);
  strokeWeight(2);
  stroke(0);
  popMatrix();
}

void cloudSegments(float x, float y) {
  int i=0;
  while (i<3) {
    ellipse(x, y, random(50, 200), random(50, 100));
    i++;
  }
}

void decoration(float x, float y) {
  rect(x, y, 300, 750);
  int count=0;
  while (count<15) {
    fill(random(120, 220), random(80, 160), random(0, 50));
    circle(random(x+50, x+250), random(y+50, y+600), random(40, 100));
    count++;
  }
  count=0;
  fill(193, 140, 4);
  while (count<10) {
    rect(x, y+count*75, 300, 20);
    count++;
  }
}

void base(float x, float y) {
  fill(random(0, 255), random(0, 255), random(0, 255));
  rect(x, y, 300, 750);
  decoration(x, y);
  fill(0);
  rect(x+100, y+600, 100, 150);
  if(catBase==1){
    fill(50, 50, 50);
    int count=0;
    while(count<50){
      circle(x+50-count*2, y+300, 200);
      count++;
    }
    fill(0);
    circle(x-50, y+300, 175);
    fill(60);
    quad(x+200, y, x+220, y,  x+270, y-100,x+250, y-100);
    quad(x+270, y-100, x+250, y-100,  x+200, y-200,x+220, y-200);
    fill(239, 240, 12);  
    pushMatrix();
    translate(x+200, y-200);
    rotate(-PI/4);
    ellipse(0, 0, 160, 100);
    fill(255);
    ellipse(0, 0, 120, 75);
    fill(239, 240, 12);
    ellipse(0, 0, 80, 50);
    rect(-5, -100, 10, 100, 10);
    popMatrix();
    fill(255);
    strokeWeight(5);
    circle(x+100, y+50, 25);
    circle(x+200, y+50, 25);
    strokeWeight(2);
  }
  
}
