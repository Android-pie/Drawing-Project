

void circlePen() {
  if ( mouseX>CircleX && mouseX<CircleX + BluebuttonWidth && mouseY>CircleY && mouseY<CircleY+BluebuttonHeight ) {
    eraser = false;
    pen = false;
    rectangle = false;
    circle = true;
  }
}
