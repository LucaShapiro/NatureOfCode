String[] linesOfText;
float boxSize = 3;
color[] colors = new color[256];
PImage img;
PImage ManuscriptButton;
PImage ColorMapButton;

void setup() {
  size(1000, 504);
  img = loadImage("10vSmall.jpg");
  ManuscriptButton = loadImage("ManuscriptButton.jpg");
  ColorMapButton = loadImage("ColorMapButton.jpg");
  linesOfText = loadStrings("10v.rtf");
  for (int i = 0; i < linesOfText.length; i++) {
    String currentLine = linesOfText[i];
    currentLine = currentLine.replaceAll("\\<.*?\\>", "");
    linesOfText[i] = currentLine;
  }

  int countGreen = 0;
  int countBrown = 0;
  int countRed = 0;
  int countBlue = 0;
  int countBeige = 0;
  
  
  for (int i = 0; i < colors.length; i++) {
    // setting green tones
    if (i > 31 && i < 56) {
      colors[i] = color((70 + (countGreen*4.33)), (80 + (countGreen*5.33)), (70 + (countGreen*4.33)));
      countGreen++;
    }
    // setting brown tones
    if(i > 55 && i < 76) {
      colors[i] = color((70 + (countBrown*2.5)), (30 + (countBrown*.97)), 0);
      countBrown++;
    }
    // setting red tones
    if(i > 75 && i < 101) {
      colors[i] = color((94 + (countRed*4.6)), (21 + countRed), (19 + (countRed*0.9)));
      countRed++;
    }
    // setting blue tones
    if(i > 100 && i < 111) {
      colors[i] = color((75 + (countBlue*2.37)), (100 + (countBlue*3.33)), (122 + (countBlue*4.07)));
      countBlue++;
    }
    // setting beige to olive tones
    if(i > 110 && i < 180) {
      colors[i] = color((135 + (countBeige*3.57)), (116 + (countBeige*3.1)), (89 + (countBeige*2.37)));
      countBeige++;
    }
  }
 
  noStroke();
}

void draw() {
  background(255);
  image(img, 0, 0);
  image(ManuscriptButton, 0, 424);
  image(ColorMapButton, 200, 424);
  float totalSize = linesOfText.length*boxSize;
  
  float yStart = map(mouseY, 0, height, -totalSize, 0);

  for (int i = 0; i < linesOfText.length; i++) {
    String currentLine = linesOfText[i];

    if (i*boxSize + yStart < height && i*boxSize + yStart > 0) {

      for (int j = 0; j < linesOfText[i].length(); j++) {
        char currentCharacter = linesOfText[i].charAt(j);
        if (currentCharacter < 256) {
          fill(colors[int(currentCharacter)]);
          rect(j*boxSize, i*boxSize+yStart, boxSize, boxSize);
        } 
        else {
          fill(0);
          rect(j*boxSize, i*boxSize+yStart, boxSize, boxSize);
          
        }
      }
    }
  }
}

void mouseMoved() {
  boxSize = map(mouseX, width, 0, 1, 20);
}
