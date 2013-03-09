ArrayList<Ant> ants;

void setup() {
  size(800, 800);
  ants = new ArrayList<Ant>();
  for (int i = 0; i <10; i++) {
    ants.add(new Ant(random(width), random(height)));
  }
}

void draw() {
  background(255);

  for (Ant a : ants) {
    // Path following and separation are worked on in this function
    a.separate(ants);
    // Call the generic run method (update, borders, display, etc.)
    a.update();
    //a.borders();
    a.display();
  }
}

