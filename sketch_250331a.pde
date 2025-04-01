
void setup(){
  size(2500, 1500);
  for(int i=0;i<10;i++){
    house(random(0,2500), random(0,1500));
  }
}
void window(int x, int y){
  strokeWeight(2);
  fill(170, 235, 237);
  square(x, y+50, 50);
  square(x-50, y, 50);
  square(x, y, 50);
  square(x-50, y+50, 50);
}
void base(){
  fill(90, 35, 7);
  triangle(0, -200, -200, 0, 200, 0);
  fill(113, 89, 41);
  square(-200, 0, 400);
}
void door(){
  fill(64, 36, 21);
  rect(-50, 250, 100, 150);
  fill(0);
  circle(25, 325, 25);
}
void draw(){
}
void house(float x, float y){
  pushMatrix();
  translate(x, y);
  base();
  window(-100, 50);
  door();
  window(100, 50);
  popMatrix();
}
