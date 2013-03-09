PVector location;
PVector ellipse1;

void setup() {
  size(400, 400);
  location = new PVector (width/2, height/2);
  ellipse1 = new PVector (
}

void draw() {
  background(255);
  pushMatrix();
  translate(location.x, location.y);
  ellipseMode(CENTER);
  noStroke();
  fill(0);
  ellipse(location.x, location.y, 50, 37); //ellipse1 (butt)
  ellipse(-30, 0, 20, 15); //ellipse2
  ellipse(-51, 0, 30, 25); //ellipse3
  ellipse(-78, 0, 30, 30); //ellipse4 (head)
  
  noFill();
  stroke(0);
  strokeWeight(3);
  strokeJoin(ROUND);
  
  //leg1
  beginShape();
  vertex(-51, 0);
  vertex(-80, 30);
  vertex(-90, 32);
  endShape();
  popMatrix();
}

