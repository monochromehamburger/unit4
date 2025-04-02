  
void setup(){
  size(2500, 1500);
  for(int i=0;i<10;i++){
    house(random(0,2500), random(0,1500), random(0,1), random(0,2*PI));
  }
}
void window(int x, int y){
  strokeWeight(2);
  fill(random(0,255), random(0,255), random(0,255));
  square(x, y+50, 50);
  square(x-50, y, 50);
  square(x, y, 50);
  square(x-50, y+50, 50);
}
void base(){
  fill(random(0,255), random(0,255), random(0,255));
  triangle(0, -200, -200, 0, 200, 0);
  fill(random(0,255), random(0,255), random(0,255));
  square(-200, 0, 400);
}
void door(){
  fill(random(0,255), random(0,255), random(0,255));
  rect(-50, 250, 100, 150);
  fill(random(0,255), random(0,255), random(0,255));
  circle(25, 325, 25);
}
void draw(){
}
void house(float x, float y, float scale, float rotation){
  pushMatrix();
  translate(x, y);
  scale(scale);
  rotate(rotation);
  base();
  window(-100, 50);
  door();
  window(100, 50);
  popMatrix();
}
