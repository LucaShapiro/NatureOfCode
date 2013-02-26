float angle = 0;
float aVelocity = 0.03;
float amplitude = 300;
float acceleration = 0.0001;

void setup() {
  size (640, 360);
  smooth();
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  float x= amplitude * sin(angle);
  
  ellipseMode(CENTER);
  stroke(0);
  fill(127);
  line(0,0,x,0);
  ellipse(x,0,36,36);
  
  aVelocity += acceleration;
  angle += aVelocity;
  
}
