# AI그래픽스기반의신기술세미나 2-2 과제
## Code

PFont f;<br>
void setup(){<br>
  size(800,800);<br>
  f = createFont("굴림",64);<br>
  textFont(f);<br>
}<br>
int i,dir=1, sp=1;<br>
void draw(){<br>
  fill(255);<br>
  background(127);<br>
  text("안동대 컴공 사랑합니다",60,i);<br>
  if(i>width) dir=-1;<br>
  if(i<50) dir=1;<br>
  i=i+dir*sp;<br>
}<br>
void keyPressed(){<br>
  sp = key-'0';<br>
}<br>

## result
![2-2](/2-2.PNG)
