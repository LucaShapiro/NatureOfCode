// Modified from code
// by Dan Shiffman
// Nature of Code

class Particle {

  PVector location;
  PVector velocity;
  float timeX;
  float timeY;
  float increment;
  float lifespan;

  Particle() {
    location = new PVector(random(width),random(height));
    velocity = new PVector(0, 0);
    timeX=0;
    timeY=1000;
    increment=0.01;
    lifespan = 255.0;
  }
  
  void update() {
    PVector perlinNoise = new PVector(map(noise(timeX),0,1,-.2,.2),map(noise(timeY),0,1,-.2,.2));
    timeX+= increment;
    timeY+= increment;
    velocity.add(perlinNoise);
    location.add(velocity);
    lifespan -= 1.0;
  }

  void display() {
    smooth();
    noStroke();
    fill(200, lifespan);
    ellipse(location.x, location.y, 20, 20);
  }
  
  void checkEdges() {

    if (location.x > width) {
      location.x = width;
      velocity.x *= -1;
    } else if (location.x < 0) {
      velocity.x *= -1;
      location.x = 0;
    }

    if (location.y > height) {
      velocity.y *= -1;
      location.y = height;
    } else if (location.y < 0) {
      velocity.y *= -1;
      location.y = 0;
    }
  }
  
  boolean isDead() {
    if (lifespan < 0.0) {
      return true;
    } else {
      return false;
    }
  }
}

