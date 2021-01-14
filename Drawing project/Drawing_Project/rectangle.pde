void rectangle() {
  if ( mouseX>RectanglebuttonX && mouseX<RectanglebuttonX + BluebuttonWidth && mouseY>RectanglebuttonY && mouseY<RectanglebuttonY+RectangleHeight ) {
    eraser = true;
    pen = false;
    rectangle = true;
  }
}
