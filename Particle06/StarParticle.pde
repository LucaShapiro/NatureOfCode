// Modified from code
// by Dan Shiffman
// Nature of Code
// & http://processing.org/learning/pshape/

class StarParticle extends Particle {

  StarParticle() {
  }

  void display() {
    smooth();
    noStroke();
    fill(100, lifespan);
    
    beginShape();
    vertex(location.x, location.y-25);
    vertex(location.x+7, location.y-10);
    vertex(location.x+23.5, location.y-7.5);
    vertex(location.x+11.5,location.y+3.5);
    vertex(location.x+14.5, location.y+20);
    vertex(location.x, location.y+12.5);
    vertex(location.x-13, location.y+20);
    vertex(location.x-11.5, location.y+3.5);
    vertex(location.x-23.5, location.y-7.5);
    vertex(location.x-7, location.y-10);
    endShape(CLOSE);
  }
}

