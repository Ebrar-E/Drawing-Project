void paletteButtonInfo() {
  String paletteButText="Color Palette";
  PFont paletteFont;
  paletteFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(paletteFont, 40);
  //
  text(paletteButText, paletteX, paletteY, paletteWidth, paletteHeight);
  fill(reset);
}//end of paletteButtonInfo



void paletteButton() {
  if (mouseX>paletteX && mouseX<paletteX+paletteWidth  && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  }
}//end of paletteButton


void colorDown() {
  if  (dropMenu2 == true && mouseX>paletteX && mouseX<paletteX+paletteWidth && mouseY>paletteY && mouseY<colorDownY+colorDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
  } else if (dropMenu2 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
  }
}//end of colorDown


/*
void pressed2() {
  if (mouseX>X && mouseX<paletteX+paletteWidth && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    colorDown = true;
  } else {
    colorDown = false;
  }
}//end of pressed
*/
