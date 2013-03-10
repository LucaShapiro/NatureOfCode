ArrayList<Ant> ants;

void setup() {
  size(800, 800);
  ants = new ArrayList<Ant>();
  for (int i = 0; i <40; i++) {
    ants.add(new Ant(random(width), random(height)));
  }
}

void draw() {
  background(255);
  //ants.add(new Ant());

  for (int i=ants.size()-1; i>=0; i--) {
    Ant a = ants.get(i);
    a.separate(ants);  // Path following and separation are worked on in this function
    a.update();  // Call the generic run method (update, borders, display, etc.)
    a.display();  //a.borders();
/*
    if (a.isDead()) {
      ants.remove(i);
    }
    */
  }
}

