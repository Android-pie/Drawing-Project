//
float DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight; 
Boolean line;
void setup() {
  fullScreen();
  DrawingSpaceX = width * 0;
  DrawingSpaceY = height * 0;
  DrawingSpaceWidth = width * 2/3;
  DrawingSpaceHeight = height * 2/3;
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
}

void draw() {
  if( mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight );
}
