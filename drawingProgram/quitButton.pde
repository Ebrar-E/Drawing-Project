void quitButInfo() {
  String quitButText="X";
  PFont quitFont;
  quitFont = createFont ("Gabriola", 95);
  //
  fill(textColor);
  textAlign(CENTER, TOP);
  textFont(quitFont, 30);
  //
  text(quitButText, quitButX, quitButY, quitButWidth, quitButHeight);
  fill(reset);
}//end of colorPalette



void quitButton() {
  if (mouseX>paletteButX && mouseX<paletteButX+paletteButWidth  && mouseY>paletteButY && mouseY<paletteButY+paletteButHeight) {
    stroke (quitButColor);
    fill (quitButColor);
    rect(paletteButX, paletteButY, paletteButWidth, paletteButHeight);
    stroke (reset);
    fill(reset);
    quitButtonInfo();
  } else {
    strokeWeight(4);
    stroke (quitButHoverOver);
    fill (quitButHoverOver);
    rect(quitButX, quitButY, quitButWidth, quitButHeight);
    stroke (reset);
    fill(reset);
    quitButtonInfo();
  }
}//end of quitButton
