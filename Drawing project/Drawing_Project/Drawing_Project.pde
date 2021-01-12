
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
Boolean pen = false;
Boolean eraser = false;
color black = #000000, PenColour = #FFFFFF, Blue = #59A4E3, White = #FFFFFF, Green = #37C95A, Red = #DB1414, Orange = #FFA51C, Purple = #6E00D1, Yellow = #F0DF61;
void setup() {
  fullScreen();
  Varibles();
  
  //
  //
  fill(black);
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  buttons();
  if ( eraser == false && pen == true && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {
    stroke(PenColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if ( eraser == true && pen == false && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(black);
    stroke(black);
    rect(mouseX, mouseY, eraserWidth, eraserHeight);
  }
}

void mousePressed() {
  PenColours();
  Eraser();
  pen();
  println(eraser, pen);
}
