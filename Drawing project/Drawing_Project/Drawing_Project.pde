
float DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight; 
float  penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight;
float eraserX, eraserY, eraserWidth, eraserHeight, eraserbuttonWidth, eraserbuttonHeight;
float eraseAllX, eraseAllY, eraseAllbuttonWidth, eraseAllbuttonHeight;
float BluebuttonX, BluebuttonY, BluebuttonWidth, BluebuttonHeight;
float GreenbuttonX, GreenbuttonY;
float RedbuttonX, RedbuttonY;
float OrangebuttonX, OrangebuttonY;
float YellowbuttonX, YellowbuttonY;
float WhitebuttonX, WhitebuttonY;
float PurplebuttonX, PurplebuttonY;
float RectanglebuttonX, RectanglebuttonY;
float CircleX, CircleY;
float RectangleWidth, RectangleHeight;
float BackGroundX1, BackGroundY1, BackGroundWidth1, BackGroundHeight1;
float BackGroundX2, BackGroundY2, BackGroundWidth2, BackGroundHeight2;
float BackGroundX3, BackGroundY3, BackGroundWidth3, BackGroundHeight3;
float BackGroundWidth4, BackGroundHeight4;
float thickness;
float thicknessbuttonX1, thicknessbuttonY1, thicknessbuttonWidth, thicknessbuttonHeight;
float thicknessbuttonX2, thicknessbuttonY2;
float thicknessbuttonX3,thicknessbuttonY3;
float thicknessbuttonX4,thicknessbuttonY4;
float thicknessbuttonX5,thicknessbuttonY5;
float thicknessbuttonX6,thicknessbuttonY6;
float thicknessbuttonX7,thicknessbuttonY7;
float thicknessbuttonX8,thicknessbuttonY8;
float CirclePenWidth, CirclePenHeight;
float img1X, img1Y, img1Width, img1Height;
float img2X, img2Y, img2Width, img2Height;
float QuitX, QuitY, QuitWidth, QuitHeight;
Boolean pen = false;
Boolean circle = false;
Boolean eraser = false;
Boolean eraseAll = false;
Boolean rectangle = false;
color black = #000000, PenColour = #FFFFFF, Blue = #59A4E3, White = #FFFFFF, Green = #37C95A, Red = #DB1414, Orange = #FFA51C, Purple = #6E00D1, Yellow = #F0DF61, LightBlue = #BC08A4;
color selection1 = #000000, selection2 = #000000, selection3 = #000000, selection4 = #000000, selection5 = #000000, selection6 = #000000, selection7 = #000000, selection8 = #000000;
PImage img1;
PImage img2;
void setup() {
  fullScreen();
  Varibles();
  fill(black);
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  fill(LightBlue);
  stroke(LightBlue);
  rect(BackGroundX1, BackGroundY1, BackGroundWidth1, BackGroundHeight1);
  fill(LightBlue);
  stroke(LightBlue);
  rect(BackGroundX2, BackGroundY2, BackGroundWidth2, BackGroundHeight2);
  fill(LightBlue);
  stroke(LightBlue);
  rect(BackGroundX3, BackGroundY3, BackGroundWidth3, BackGroundHeight3);
  fill(LightBlue);
  stroke(LightBlue);
  rect(BackGroundX3, BackGroundY3, BackGroundWidth4, BackGroundHeight4);
  buttons();
  if ( mousePressed && eraser == false && pen == true && rectangle == false && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {
    
    strokeWeight(thickness);
    stroke(PenColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if ( mousePressed && eraser == true && pen == false && rectangle == false && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(black);
    stroke(black);
    ellipse(mouseX, mouseY, eraserWidth, eraserHeight);
  }

  if ( mousePressed && eraser == false && pen == false && rectangle == true && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(PenColour);
    stroke(PenColour);
    rect(mouseX, mouseY, RectangleWidth, RectangleHeight);
  }
  
  if ( mousePressed && eraser == false && pen == false && rectangle == false && circle == true && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) { 
    fill(PenColour);
    stroke(PenColour);
    ellipse(mouseX, mouseY, CirclePenWidth, CirclePenHeight);
  }
  
}

void mousePressed() {
  PenColours();
  Eraser();
  pen();
  rectangle();
  circlePen();
  penThickness();
  EraseAll();
  Image();
  Quit();
  println("eraser", eraser, "pen", pen, "rectangle", rectangle);
}
