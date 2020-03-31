# AI그래픽스기반의신기술세미나 3-1 과제
## Code

void setup() {<br>
  size(640, 360);<br>
}<br>
int i=0;<br>
void draw() {<br>
  background(102);<br>
  <br>
  pushMatrix();<br>
  translate(width*0.2, height*0.5);<br>
  rotate(frameCount / 50.0);<br>
  if(i>60){<br>
    fill(random(0,255),random(0,255),random(0,255));<br>
  }<br>
  star(0, 0, 5, 50, 4); <br>
  popMatrix();<br>
  <br>
  pushMatrix();<br>
  translate(width*0.5, height*0.5);<br>
  rotate(frameCount / 400.0);<br>
  if(i>60){<br>
    fill(random(0,255),random(0,255),random(0,255));<br>
  }<br>
  star(0, 0, 80, 100, i); <br>
  popMatrix();<br>
  <br>
  pushMatrix();<br>
  translate(width*0.8, height*0.5);<br>
  rotate(frameCount / -100.0);<br>
  if(i>60){<br>
    fill(random(0,255),random(0,255),random(0,255));<br>
  }<br>
  star(0, 0, 30, 70, 5); <br>
  popMatrix();<br>
  i++;<br>
  if(i>61){<br>
    i=0;<br>
  }<br>
}<br>
<br>
void star(float x, float y, float radius1, float radius2, int npoints) {<br>
  float angle = TWO_PI / npoints;<br>
  float halfAngle = angle/2.0;<br>
  beginShape();<br>
  for (float a = 0; a < TWO_PI; a += angle) {<br>
    float sx = x + cos(a) * radius2;<br>
    float sy = y + sin(a) * radius2;<br>
    vertex(sx, sy);<br>
    sx = x + cos(a+halfAngle) * radius1;<br>
    sy = y + sin(a+halfAngle) * radius1;<br>
    vertex(sx, sy);<br>
  }<br>
  endShape(CLOSE);<br>
}<br>
<br>
## result
![3-1](/3-1.gif)
