PFont f;
void setup() {
  size(640, 320);
  f = createFont("굴림", 64);
  textFont(f);
}
int i, dir=1, sp=1;
void draw() {
  fill(255);
  background(127);
  text("그래픽스♥", i, 160);
  if (i>width) dir=-1;
  if (i<50) dir=1;
  i=i+dir*sp;
}
void keyPressed() {
  sp = key-'0';
}
