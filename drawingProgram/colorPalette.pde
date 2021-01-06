void paletteButtonInfo() {
  String paletteButText="Color Palette";
  PFont paletteFont;
  paletteFont = createFont ("Gabriola", 95);
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
    stroke (paletteColor);
    fill (paletteColor);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  } else {
    strokeWeight(4);
    stroke (paletteHoverOver);
    fill (paletteHoverOver);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
  }
}//end of paletteButton
  
