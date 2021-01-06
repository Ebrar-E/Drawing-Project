void paletteButtonInfo() {
  String paletteButText="Color Palette";
  PFont paletteFont;
  paletteFont = createFont ("Gabriola", 95);
  //
  fill(textColor);
  textAlign(CENTER, TOP);
  textFont(paletteFont, 30);
  //
  text(paletteButText, paletteX, paletteY, paletteWidth, paletteHeight);
  fill(reset);
}//end of quitButtonInfo



void paletteButton() {
  if (mouseX>paletteX && mouseX<paletteX+paletteWidth  && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    stroke (paletteColor);
    fill (paletteColor);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  } else {
    strokeWeight(4);
    stroke (quitButHoverOver);
    fill (quitButHoverOver);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
  }
}//end of paletteButton
  
