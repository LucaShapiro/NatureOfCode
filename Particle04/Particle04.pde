// Modified from code
// by Dan Shiffman
// Nature of Code

ParticleSystem ps;

void setup() {
  size(400, 400);
  ps=new ParticleSystem();
}

void draw() {
  background(0);
  ps.addParticle();
  ps.run();
  
}

