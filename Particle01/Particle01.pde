Particle p;

void setup() {
  size(400,400);
  p=new Particle();
}

void draw() {
  p.update();
  p.display();
  p.checkEdges();
}
