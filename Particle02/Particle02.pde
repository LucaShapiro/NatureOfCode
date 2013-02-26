ArrayList<Particle> particles;

void setup() {
  size(400, 400);
  particles=new ArrayList <Particle>();

  for (int i=0; i<100; i++) {
    particles.add(new Particle());
  }
}

void draw() {
  background(0);
  for (Particle p : particles) {
    p.update();
    p.display();
    p.checkEdges();
  }
}

