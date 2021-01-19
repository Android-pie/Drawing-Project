void penThickness() {
  if ( mouseX>thicknessbuttonX1 && mouseX<thicknessbuttonX1 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/900;
    selection1 = Green;
    selection2 = black;
    selection3 = black;
    selection4 = black;
    selection5 = black;
    selection6 = black;
    selection7 = black;
    selection8 = black;
  }
  
  if ( mouseX>thicknessbuttonX2 && mouseX<thicknessbuttonX2 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/800;
  }
  
  if ( mouseX>thicknessbuttonX3 && mouseX<thicknessbuttonX3 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/700;
  }
  
  if ( mouseX>thicknessbuttonX4 && mouseX<thicknessbuttonX4 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/600;
  }
  
  if ( mouseX>thicknessbuttonX5 && mouseX<thicknessbuttonX5 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/500;
  }
  
   if ( mouseX>thicknessbuttonX6 && mouseX<thicknessbuttonX6 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/400;
  }
  
   if ( mouseX>thicknessbuttonX7 && mouseX<thicknessbuttonX7 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/300;
  }
  
   if ( mouseX>thicknessbuttonX8 && mouseX<thicknessbuttonX8 + thicknessbuttonWidth && mouseY>thicknessbuttonY && mouseY<thicknessbuttonY+thicknessbuttonHeight ) {
    thickness = width * 1/200;
  }
}
