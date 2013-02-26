class StarParticle extends Particle {
  //PVector location;
  
  StarParticle() {
    //location = new PVector(random(width),random(height));
  }

  void display() {
    smooth();
    noStroke();
    fill(200, lifespan);
    rect(location.x, location.y, 15, 15); 
   }
  
}

