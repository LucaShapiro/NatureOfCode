// Modified from code
// by Dan Shiffman
// Nature of Code

class ParticleSystem {

  ArrayList<Particle> particles;
  ArrayList<StarParticle> stars;

  ParticleSystem() {
    particles=new ArrayList <Particle>();
    stars=new ArrayList <StarParticle>();
  }
  
  void addParticle() {
    particles.add(new Particle());
    stars.add(new StarParticle());
  }

  void run() {
    for (int i=particles.size()-1; i>=0; i--) {
      Particle p = particles.get(i);
      StarParticle s = stars.get(i);
      p.update();
      s.update();
      p.display();
      s.display();
      p.checkEdges();
      s.checkEdges();
      if (p.isDead()) {
        particles.remove(i);
      }
      if (s.isDead()) {
        stars.remove(i);
      }
    }
  }
}

