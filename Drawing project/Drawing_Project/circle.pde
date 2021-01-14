

void circlePen() {
  if ( mouseX>CircleX && mouseX<CircleX + BluebuttonWidth && mouseY>CircleY && mouseY<CircleY+BluebuttonHeight ) {
    eraser = true;
    pen = false;
    rectangle = false;
  }
}
