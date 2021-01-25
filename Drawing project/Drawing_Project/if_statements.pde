void IfStatements(){
 if ( mousePressed && eraser == false && pen == true && rectangle == false && mouseX>DrawingSpaceX && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight ) {

    strokeWeight(thickness);
    stroke(PenColour);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }

  if ( mousePressed && eraser == true && pen == false && rectangle == false && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(black);
    stroke(black);
    ellipse(mouseX, mouseY, eraserWidth, eraserHeight);
  }

  if ( mousePressed && eraser == false && pen == false && rectangle == true && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) {   
    fill(PenColour);
    stroke(PenColour);
    rect(mouseX, mouseY, RectangleWidth, RectangleHeight);
  }

  if ( mousePressed && eraser == false && pen == false && rectangle == false && circle == true && mouseX> DrawingSpaceX  && mouseX<DrawingSpaceX+ DrawingSpaceWidth && mouseY>DrawingSpaceY && mouseY<DrawingSpaceY+DrawingSpaceHeight) { 
    fill(PenColour);
    stroke(PenColour);
    ellipse(mouseX, mouseY, CirclePenWidth, CirclePenHeight);
  }
  if (rectangle == true || circle == true) {
    StrokeColours();
  }
}
