String[] linesOfText;
float boxSize = 22;
float boxHeight = 30;
float lineHeight = 45;
color[] colors = new color[256];
PImage Manuscript;
PImage ManuscriptButton;
PImage ColorMapButton;
PImage WhiteBackground;
PImage IllustrationButton;
PImage pGlyph;
PImage glyph1;
PImage letter1;
PImage illustration;
PImage illustrationPlacard;
PImage repeat;
PImage repeatPlacard;
int buttonNumb;

void setup() {
  size(1000, 504);
  Manuscript = loadImage("10vSmall.jpg");
  ManuscriptButton = loadImage("ManuscriptButton.png");
  ColorMapButton = loadImage("ColorMapButton.png");
  WhiteBackground = loadImage("whitebackground.jpg");
  IllustrationButton = loadImage("IllustrationButton.png");
  glyph1 = loadImage("Glyph1.png");
  letter1 = loadImage("CommonLetterform1.png");
  illustration = loadImage("10vIllustration.png");
  illustrationPlacard = loadImage("IllustrationPlacard.png");
  linesOfText = loadStrings("10vCurrier.txt");
  repeat = loadImage("RepeatedWord.png");
  repeatPlacard = loadImage("RepeatedWords.png");
  buttonNumb=0;
  

  for (int i = 0; i < linesOfText.length; i++) {
    String currentLine = linesOfText[i];
    //currentLine = currentLine.replaceAll("\\<.*?\\>", "");
    linesOfText[i] = currentLine;
    println(currentLine);
  }

  int countGreen = 0;
  int countBrown = 0;
  int countRed = 0;
  int countBlue = 0;
  int countBeige = 0;


  for (int i = 0; i < colors.length; i++) {
    // setting green tones
    if (i > 31 && i < 65) {
      colors[i] = color((70 + (countGreen*4.33)), (80 + (countGreen*5.33)), (70 + (countGreen*4.33)));
      countGreen++;
    }
    // setting brown tones
    if (i > 64 && i < 75) {
      colors[i] = color((70 + (countBrown*2.5)), (30 + (countBrown*.97)), 0);
      countBrown++;
    }
    // setting red tones
    if (i > 74 && i < 88) {
      colors[i] = color((94 + (countRed*4.6)), (21 + countRed), (19 + (countRed*0.9)));
      countRed++;
    }
    // setting blue tones
    if (i > 89 && i < 111) {
      colors[i] = color((75 + (countBlue*2.37)), (100 + (countBlue*3.33)), (122 + (countBlue*4.07)));
      countBlue++;
    }
    // setting beige to olive tones
    if (i > 110 && i < 180) {
      colors[i] = color((135 + (countBeige*3.57)), (116 + (countBeige*3.1)), (89 + (countBeige*2.37)));
      countBeige++;
    }
  }

  noStroke();
}

void draw() {
  image(ManuscriptButton, 0, 424);
  image(ColorMapButton, 350, 424);
  image(IllustrationButton, 650, 424);
  if (buttonNumb == 0) {
    drawManuscript();
  }
  if (buttonNumb == 1) {
    drawColorMap();
  }
  if(buttonNumb == 2) {
    drawIllustration();
  }
}

void mouseClicked() {
  if (mouseX < 3500 && mouseY > 424) {
    buttonNumb=0;
  }
  if (mouseX > 350 && mouseX < 600 & mouseY > 424) {
    buttonNumb=1;
  }
  if (mouseX > 600 && mouseX < 1000 & mouseY > 424) {
    buttonNumb=2;
}
}

void drawManuscript() {
  image(Manuscript, 0, 0);
  image(glyph1, 354, 240, 40, 40);
  image(repeat, 55, 125, 153, 30);
  if (mouseX > 340 && mouseX < 395 && mouseY > 228 && mouseY < 285) {
    drawPlacard();
  }
  if (mouseX > 50 & mouseX < 205 & mouseY >120 & mouseY < 160) {
    drawPlacard2();
  }
}

void drawPlacard() {
  image(letter1, 400, 100);
}

void drawPlacard2() {
  image(repeatPlacard, 220, 40);
}

void drawColorMap() {
  image(WhiteBackground, 0, 0);
  float totalSize = linesOfText.length*boxSize;

  for (int i = 0; i < linesOfText.length; i++) {
    String currentLine = linesOfText[i];

    for (int j = 0; j < linesOfText[i].length(); j++) {
      char currentCharacter = linesOfText[i].charAt(j);
      //println(currentCharacter);
      if (currentCharacter < 256) {
        fill(colors[int(currentCharacter)]);
        rect(j*boxSize+50, i*lineHeight+80, boxSize, boxHeight);
      }
      if(currentCharacter == 46) {
        fill(255);
        rect(j*boxSize+50, i*lineHeight+80, boxSize, boxHeight);
      }
      /*else {
        fill(0);
        rect(j*boxSize, i*boxSize, boxSize, boxSize);
      }*/
    }
  }
}

void drawIllustration() {
  image(WhiteBackground, 0, 0);
  image(illustration, 0, 0);
  if (mouseX > 350 && mouseX < 650) {
    drawPlacard3();
  }
}
  
void drawPlacard3() {
  image(illustrationPlacard, 20, 100);
}
