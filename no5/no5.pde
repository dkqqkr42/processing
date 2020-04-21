PGraphics pg;

void setup() {
  size(640, 360);
  pg = createGraphics(400, 200);
}
int i=1;
void draw() {
  fill(0, 12);
  rect(0, 0, width, height);
  fill(random(0,255),random(0,255),random(0,255));
  noStroke();
  ellipse(mouseX, mouseY, i, i);
  i++;
  pg.beginDraw();
  pg.background(51);
  pg.noFill();
  pg.stroke(0);
  pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
  
  // Draw the offscreen buffer to the screen with image() 
  image(pg, 120, 60); 
  if(i>120){
    i = 1;
  }
}
