void PenColours() {
  
  if ( mouseX>BluebuttonX && mouseX<BluebuttonX + BluebuttonWidth && mouseY>BluebuttonY && mouseY<BluebuttonY+BluebuttonHeight ) {
    PenColour = Blue;
  }

  if ( mouseX>GreenbuttonX && mouseX<GreenbuttonX + BluebuttonWidth && mouseY>GreenbuttonY && mouseY<GreenbuttonY+BluebuttonHeight ) {
    PenColour = Green;
  }

  if ( mouseX>RedbuttonX && mouseX<RedbuttonX + BluebuttonWidth && mouseY>RedbuttonY && mouseY<RedbuttonY+BluebuttonHeight ) {
    PenColour = Red;
  }

  if ( mouseX>WhitebuttonX && mouseX<WhitebuttonX + BluebuttonWidth && mouseY>WhitebuttonY && mouseY<WhitebuttonY+BluebuttonHeight ) {
    PenColour = White;
  }

  if ( mouseX>OrangebuttonX && mouseX<OrangebuttonX + BluebuttonWidth && mouseY>OrangebuttonY && mouseY<OrangebuttonY+BluebuttonHeight ) {
    PenColour = Orange;
  }

  if ( mouseX>PurplebuttonX && mouseX<PurplebuttonX + BluebuttonWidth && mouseY>PurplebuttonY && mouseY<PurplebuttonY+BluebuttonHeight ) {
    PenColour = Purple;
  }

  if ( mouseX>YellowbuttonX && mouseX<YellowbuttonX + BluebuttonWidth && mouseY>YellowbuttonY && mouseY<YellowbuttonY+BluebuttonHeight ) {
    PenColour = Yellow;
  }
}
