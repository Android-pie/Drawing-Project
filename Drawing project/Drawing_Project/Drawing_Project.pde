//
float DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight; 
float  penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight;
float eraserX, eraserY, eraserWidth, eraserHeight, eraserbuttonWidth,eraserbuttonHeight;
Boolean pen = false;
Boolean eraser = false;
color black = #FFFFFF;
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
  eraserbuttonWidth = penbuttonWidth;
  eraserbuttonHeight = penbuttonHeight;
  eraserWidth = width * 1/20;
  eraserHeight = eraserWidth;
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  rect(penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight);
  rect(eraserX, eraserY, eraserWidth, eraserHeight);
  if ( eraser == false && pen == true && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) line(mouseX, mouseY, pmouseX, pmouseY);

  if ( eraser == true && pen == false && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {
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

  println(eraser, pen);
}
