PVector location;
PVector ellipse1;
PVector ellipse2;
PVector ellipse3;
PVector ellipse4;
int overlap;

void setup() {
  size(400, 400);
  location = new PVector (width/2, height/2);
  ellipse1 = new PVector (50, 37);
  ellipse2 = new PVector (20, 15);
  ellipse3 = new PVector (30, 25);
  ellipse4 = new PVector (30, 30);
  overlap = 3;
}

void draw() {
  background(255);
  ellipseMode(CENTER);
  noStroke();
  fill(0);
  pushMatrix();
  translate(location.x, location.y);
  ellipse(0, 0, ellipse1.x, ellipse1.y); //ellipse1 (butt)
  ellipse(-(ellipse1.x/2 + ellipse2.x/2)+overlap, 0, ellipse2.x, 
  ellipse2.y); //ellipse2
  ellipse(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap, 0, 
  ellipse3.x, ellipse3.y); //ellipse3
  ellipse(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap, 0, ellipse4.x, ellipse4.y); //ellipse4 (head)

  noFill();
  stroke(0);
  strokeWeight(2);
  
  // antenna 1
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap-20, -20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap-40, -23);
  endShape();

  // antenna 2
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap-20, 20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x +
    ellipse3.x/2)+3*overlap-40, 23);
  endShape();
  
  // leg 1
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap-15, -20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap-35, -30);
  endShape();
  
  // leg 2
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap-15, 20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap-35, 30);
  endShape();
  
  // leg 3
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap+2, -20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap+12, -40);
  endShape();
  
  // leg 4
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap+2, 20);
  vertex(-(ellipse1.x/2 + ellipse2.x + ellipse3.x/2)+2*overlap+12, 40);
  endShape();
  
  // leg 5
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x/2)-3, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x/2)+5, -20);
  vertex(-(ellipse1.x/2 + ellipse2.x/2)+30, -45);
  endShape();
  
  // leg 6
  beginShape();
  vertex(-(ellipse1.x/2 + ellipse2.x/2)-3, 0);
  vertex(-(ellipse1.x/2 + ellipse2.x/2)+5, 20);
  vertex(-(ellipse1.x/2 + ellipse2.x/2)+30, 45);
  endShape();
  
  popMatrix();


  /*
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
   
   //leg2
   beginShape();
   vertex(-51, 0);
   vertex(-80, -30);
   vertex(-90, -32);
   endShape();
   */
}

