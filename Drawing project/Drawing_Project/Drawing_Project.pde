//
float DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight; 
float  penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight;
float eraserX, eraserY, eraserWidth, eraserHeight;
Boolean pen = false;
Boolean eraser = false;
void setup() {
  size(500, 400);
  DrawingSpaceX = width * 0;
  DrawingSpaceY = height * 0;
  DrawingSpaceWidth = width * 2/3;
  DrawingSpaceHeight = height * 2/3;
  penbuttonX = width * 4/5;
  penbuttonY = height * 4/5;
  penbuttonWidth = width * 1/9;
  penbuttonHeight = height * 1/9;
  eraserX = width * 3/5;
  eraserY =  penbuttonY;
  eraserWidth = penbuttonWidth;
  eraserHeight = penbuttonHeight;
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  rect(penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  if ( eraser == false && pen == true && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) line(mouseX, mouseY, pmouseX, pmouseY);
}

void mousePressed() {

  if ( mouseX>penbuttonX && mouseX<penbuttonX + penbuttonWidth && mouseY>penbuttonY && mouseY<penbuttonY+penbuttonHeight ) {
    pen = true;
    eraser = false;
  }
  
  if ( mouseX>eraserX && mouseX<eraserX + eraserWidth && mouseY>eraserY && mouseY<eraserY+eraserHeight ) {
    eraser = true;
    pen = false;
  }
  
  println(eraser, pen);
  
}
