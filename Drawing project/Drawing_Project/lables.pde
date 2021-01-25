void Lables() {
  stroke(LightBlue);
  fill(LightBlue);
  rect(thicknessLableX, thicknessLableY, thicknessLableWidth, thicknessLableHeight);
  fill(White); 
  textAlign (CENTER, CENTER);
  textFont(lableFont, 35);
  text("Pen", penbuttonX, penbuttonY, penbuttonWidth, penbuttonHeight);
  textFont(lableFont, 20);
  text("Eraser", eraserX, eraserY, eraserbuttonWidth, eraserbuttonHeight);
  text("Reset", eraseAllX, eraseAllY, eraseAllbuttonWidth, eraseAllbuttonHeight);
  textFont(lableFont, 15.5);
  text("Rectangle", RectanglebuttonX, RectanglebuttonY, BluebuttonWidth, BluebuttonHeight);
  textFont(lableFont, 20);
  text("Circle", CircleX, CircleY, BluebuttonWidth, BluebuttonHeight);
  textFont(lableFont, 30);
  text("Thickness from least to greatest (Left to Right)", thicknessLableX, thicknessLableY, thicknessLableWidth, thicknessLableHeight);
 textFont(lableFont, 20);
  text("Image 1", img1X, img1Y, img1Width, img1Height);
  text("Image 2", img2X, img2Y, img2Width, img2Height);
  text("Vol Up", VolUpX, VolUpY, VolUpWidth, VolupHeight);
  text("Mute", muteX, muteY, muteWidth, muteHeight);
  textFont(lableFont, 15);
  text("Vol down", VolDownX, VolDownY, VolDownWidth, VolDownHeight);
  textFont(lableFont, 60);
  text("X", QuitX, QuitY, QuitWidth, QuitHeight);
}
