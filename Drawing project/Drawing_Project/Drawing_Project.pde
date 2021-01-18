
float DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight; 
float  penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight;
float eraserX, eraserY, eraserWidth, eraserHeight, eraserbuttonWidth, eraserbuttonHeight;
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
float thicknessbuttonX1, thicknessbuttonY, thicknessbuttonWidth, thicknessbuttonHeight;
float thicknessbuttonX2;
float thicknessbuttonX3;
float thicknessbuttonX4;
float thicknessbuttonX5;
float thicknessbuttonX6;
float thicknessbuttonX7;
float thicknessbuttonX8;
Boolean pen = false;
Boolean eraser = false;
Boolean rectangle = false;
color black = #000000, PenColour = #FFFFFF, Blue = #59A4E3, White = #FFFFFF, Green = #37C95A, Red = #DB1414, Orange = #FFA51C, Purple = #6E00D1, Yellow = #F0DF61, LightBlue = #BC08A4;
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
  if ( eraser == false && pen == true && rectangle == false && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {
    stroke(PenColour);
    strokeWeight(thickness);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if ( eraser == true && pen == false && rectangle == false && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(black);
    stroke(black);
    ellipse(mouseX, mouseY, eraserWidth, eraserHeight);
  }

  if ( eraser == false && pen == false && rectangle == true && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(PenColour);
    stroke(PenColour);
    rect(mouseX, mouseY, RectangleWidth, RectangleHeight);
  }
}

void mousePressed() {
  PenColours();
  Eraser();
  pen();
  rectangle();
  circlePen();
  penThickness();
  println("eraser", eraser, "pen", pen, "rectangle", rectangle);
}
