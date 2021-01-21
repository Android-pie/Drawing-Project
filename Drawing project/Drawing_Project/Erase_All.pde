
void EraseAll() {
  if ( mouseX>eraseAllX && mouseX<eraseAllX + eraseAllbuttonWidth && mouseY>eraseAllY && mouseY<eraseAllY+eraseAllbuttonHeight ) {
    fill(black);
  rect(DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
  }
}
