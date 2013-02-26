class Particle {

  PVector location;
  PVector velocity;
  float time;
  float increment;

  Particle() {
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, 0);
    time=0;
    increment=0.01;
  }
  
  void update() {
    PVector perlinNoise = new PVector(noise(time), noise(time));
    time+= increment;
    velocity.add(perlinNoise);
    location.add(velocity);
  }

  void display() {
    background(0);
    smooth();
    noStroke();
    fill(200);
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
    }
  }
}

