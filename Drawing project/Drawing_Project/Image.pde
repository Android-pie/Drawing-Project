
void Image() {
  if ( mouseX>img1X && mouseX<img1X + img1Width && mouseY>img1Y && mouseY<img1Y+img1Height ) {
  image(img1, DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
  }
  if ( mouseX>img2X && mouseX<img2X + img2Width && mouseY>img2Y && mouseY<img2Y+img2Height ) {
  image(img2, DrawingSpaceX, DrawingSpaceY, DrawingSpaceWidth, DrawingSpaceHeight);
  }
} 
