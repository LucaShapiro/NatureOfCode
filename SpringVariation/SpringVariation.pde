// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Mover object
Bob bob;
Bob bob2;

// Spring object
Spring spring;
Spring spring2;

void setup() {
  size(800,800);
  // Create objects at starting location
  // Note third argument in Spring constructor is "rest length"
  spring = new Spring(width/2,10,100);
  spring2 = new Spring(bob.location.x(), 10, 100); 
  bob = new Bob(width/2,100);
  bob2 = new Bob(width/4, 100);

}

void draw()  {
  background(255); 
  // Apply a gravity force to the bob
  PVector gravity = new PVector(0,2);
  bob.applyForce(gravity);
  
  // Connect the bob to the spring (this calculates the force)
  spring.connect(bob);
  spring.connect(bob2);
  // Constrain spring distance between min and max
  spring.constrainLength(bob,30,200);
  spring.constrainLength(bob2, 30, 200);
  
  // Update bob
  bob.update();
  bob2.update();
  // If it's being dragged
  bob.drag(mouseX,mouseY);
  bob2.drag(mouseX, mouseY);
  
  // Draw everything
  spring.displayLine(bob); // Draw a line between spring and bob
  spring2.displayLine(bob2);
  bob.display(); 
  bob2.display();
  spring.display(); 
  spring2.display();
  
  fill(0);
  text("click on bob to drag",10,height-5);
}


// For mouse interaction with bob

void mousePressed()  {
  bob.clicked(mouseX,mouseY);
  bob2.clicked(mouseX, mouseY);
}

void mouseReleased()  {
  bob.stopDragging(); 
  bob2.stopDragging();
}


