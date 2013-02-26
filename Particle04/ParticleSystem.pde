// Modified from code
// by Dan Shiffman
// Nature of Code

class ParticleSystem {

  ArrayList<Particle> particles;

  ParticleSystem() {
    particles=new ArrayList <Particle>();
  }
  
  void addParticle() {
    particles.add(new Particle());
  }

  void run() {
    for (int i=particles.size()-1; i>=0; i--) {
      Particle p = particles.get(i);
      p.update();
      p.display();
      p.checkEdges();
      if (p.isDead()) {
        particles.remove(i);
      }
    }
  }
}

