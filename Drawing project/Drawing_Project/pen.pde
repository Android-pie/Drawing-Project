
void pen() {
  if ( mouseX>penbuttonX && mouseX<penbuttonX + penbuttonWidth && mouseY>penbuttonY && mouseY<penbuttonY+penbuttonHeight ) {
    pen = true;
    eraser = false;
  }
}
