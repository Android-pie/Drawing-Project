//
//
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
color black = #000000, PenColour = #FFFFFF, blue = #59A4E3, White = #FFFFFF, Green = #37C95A, Red = #DB1414, Orange = #FFA51C, Purple = #6E00D1, Yellow = #F0DF61;
void setup() {
  fullScreen();
  DrawingSpaceX = width * 0;
  DrawingSpaceY = height * 0;
  DrawingSpaceWidth = width * 2/3;
  DrawingSpaceHeight = height * 2/3;
  penbuttonX = width * 4/5;
  penbuttonY = height * 1/5;
  penbuttonWidth = width * 1/9;
  penbuttonHeight = height * 1/9;
  eraserX = width * 3.5/5;
  eraserY =  penbuttonY;
  eraserbuttonWidth = penbuttonWidth;
  eraserbuttonHeight = penbuttonHeight;
  eraserWidth = width * 1/20;
  eraserHeight = eraserWidth;
  BluebuttonX = width * 0.1/5;
  GreenbuttonX = width * 0.4/5;
  RedbuttonX = width * 0.7/5;
  WhitebuttonX = width * 1/5;
  OrangebuttonX = width * 1.3/5;
  PurplebuttonX = width * 1.6/5;
  YellowbuttonX = width * 1.9/5;
  BluebuttonY = GreenbuttonY =  RedbuttonY = WhitebuttonY = OrangebuttonY = PurplebuttonY = YellowbuttonY = height * 4/5;;
  BluebuttonWidth = BluebuttonHeight = penbuttonWidth/2;
  //
  //
  
  //
  //
  fill(black);
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  fill(black);
  rect(penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  fill(blue);
  rect(BluebuttonX, BluebuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(Green);
  rect(GreenbuttonX, GreenbuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(Red);
  rect(RedbuttonX, RedbuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(White);
  rect(WhitebuttonX, WhitebuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(Orange);
  rect(OrangebuttonX, OrangebuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(Purple);
  rect(PurplebuttonX, PurplebuttonY, BluebuttonWidth, BluebuttonHeight);
  fill(Yellow);
  rect(YellowbuttonX, YellowbuttonY, BluebuttonWidth, BluebuttonHeight);
  if ( eraser == false && pen == true && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {
    stroke(PenColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if ( eraser == true && pen == false && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth - (eraserWidth) && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight - (eraserHeight)) {
    fill(black);
    stroke(black);
    rect(mouseX, mouseY, eraserWidth, eraserHeight);
  }
}

void mousePressed() {

  if ( mouseX>penbuttonX && mouseX<penbuttonX + penbuttonWidth && mouseY>penbuttonY && mouseY<penbuttonY+penbuttonHeight ) {
    pen = true;
    eraser = false;
  }

  if ( mouseX>eraserX && mouseX<eraserX + eraserbuttonWidth && mouseY>eraserY && mouseY<eraserY+eraserbuttonHeight ) {
    eraser = true;
    pen = false;
  }

  if ( mouseX>BluebuttonX && mouseX<BluebuttonX + BluebuttonWidth && mouseY>BluebuttonY && mouseY<BluebuttonY+BluebuttonHeight ) {
    PenColour = blue;
  }

  if ( mouseX>GreenbuttonX && mouseX<GreenbuttonX + BluebuttonWidth && mouseY>GreenbuttonY && mouseY<GreenbuttonY+BluebuttonHeight ) {
    PenColour = Green;
  }

  if ( mouseX>RedbuttonX && mouseX<RedbuttonX + BluebuttonWidth && mouseY>RedbuttonY && mouseY<RedbuttonY+BluebuttonHeight ) {
    PenColour = Red;
  }

  if ( mouseX>WhitebuttonX && mouseX<WhitebuttonX + BluebuttonWidth && mouseY>WhitebuttonY && mouseY<WhitebuttonY+BluebuttonHeight ) {
    PenColour = White;
  }

  if ( mouseX>OrangebuttonX && mouseX<OrangebuttonX + BluebuttonWidth && mouseY>OrangebuttonY && mouseY<OrangebuttonY+BluebuttonHeight ) {
    PenColour = Orange;
  }

  if ( mouseX>PurplebuttonX && mouseX<PurplebuttonX + BluebuttonWidth && mouseY>PurplebuttonY && mouseY<PurplebuttonY+BluebuttonHeight ) {
    PenColour = Purple;
  }

  if ( mouseX>YellowbuttonX && mouseX<YellowbuttonX + BluebuttonWidth && mouseY>YellowbuttonY && mouseY<YellowbuttonY+BluebuttonHeight ) {
    PenColour = Yellow;
  }

  println(eraser, pen);
}
