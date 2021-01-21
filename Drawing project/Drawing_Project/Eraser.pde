
void Eraser() {
  if ( mouseX>eraserX && mouseX<eraserX + eraserbuttonWidth && mouseY>eraserY && mouseY<eraserY+eraserbuttonHeight ) {
    eraser = true;
    pen = false;
    rectangle = false;
    circle = false;
  }
}
