//project
//battle cats
      
void setup(){
  size(2500, 1500);
}
void draw(){
  doge(500, 500);
  cat(1000, 500);
}
void doge(int x, int y){
  pushMatrix();
  translate(x, y);
  strokeWeight(2);
  fill(255);
  rect(x-10, y, 120, 120, 50);
  triangle(x+10, y+10, x+25, y-25, x+40, y+10);
  triangle(x+60, y+10, x+75, y-25, x+90, y+10);
  rect(x+70, y+60, 40, 30);
  line(x+70, y+75, x+110, y+75);
  fill(0);
  circle(x+40, y+30, 8);
  circle(x+80, y+30, 8);
  int count=1;
  fill(255);
  while(count<=4){
    rect(x+count*25-15, y+115, 10, 10); 
    count++;
  }
  triangle(x-40, y+40, x-10, y+60, x-10, y+80); 
  popMatrix();
}
void cat(int x, int y){
  pushMatrix();
  translate(x, y);
  
  popMatrix();
}
