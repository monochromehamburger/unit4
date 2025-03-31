
void setup(){
  size(2500, 1500);
}
void window(){
  strokeWeight(2);
  fill(170, 235, 237);
  square(-50, -50, 50);
  square(0, 50, 50);
  square(0, 0, 50);
  square(-50, 0, 50);
}
void base(){
  fill(90, 35, 7);
  triangle(0, 200, -200, 0, 200, 0);
  fill(113, 89, 41);
  square(-200, 0, 400);
}
void door(){
  fill(64, 36, 21);
  rect(-50, -75, 100, 150);
  fill(0);
  circle(25, 0, 25);
}
void draw(){
  house(1000, 500);
}
void house(int x, int y){
  pushMatrix();
  translate(x, y);
  base();
  window();
  window();
  door();
  popMatrix();
}
