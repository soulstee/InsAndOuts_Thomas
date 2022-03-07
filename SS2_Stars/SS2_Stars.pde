/*
*
Sky full of Stars by Thomas Garcia Mena (2/11/2022)
*
*/

void setup() {
  size (1070, 800);
  background (#191970);
}

void draw () {
  noStroke();
  ellipse (0, 0, 500, 500);

translate(mouseX, mouseY);
  fill(#FFE81F);
  stroke(0);
  strokeWeight(2);
  beginShape();
  vertex(0, -50);
  vertex(14, -20);
  vertex(47, -15);
  vertex(23, 7);
  vertex(29, 40);
  vertex(0, 25);
  vertex(-29, 40);
  vertex(-23, 7);
  vertex(-47, -15);
  vertex(-14, -20);
  endShape(CLOSE);


if (keyPressed == true) {
    fill(#FEFCD7);
  } else {
    fill(#F0F0F0);
  }
}
