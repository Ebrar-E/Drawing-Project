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
}//end of quitButtonInfo



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
  
