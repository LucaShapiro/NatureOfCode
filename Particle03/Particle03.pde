// Modified from code
// by Dan Shiffman
// Nature of Code

ArrayList<Particle> particles;

void setup() {
  size(400, 400);
  particles=new ArrayList <Particle>();
}

void draw() {
  
  background(0);
  particles.add(new Particle());
  
  for (int i=particles.size()-1; i>=0; i--) {
    Particle p = particles.get(i);
    p.update();
    p.display();
    p.checkEdges();
    if(p.isDead()) {
      particles.remove(i);
    }
  }
}

