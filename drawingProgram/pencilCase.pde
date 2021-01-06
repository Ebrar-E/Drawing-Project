void caseButtonInfo() {
  String caseButText="Pencil Case";
  PFont caseFont;
  caseFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(caseFont, 40);
  //
  text(caseButText, caseX, caseY, caseWidth, caseHeight);
  fill(reset);
}//end of caseButtonInfo



void caseButton() {
  if (mouseX>caseX && mouseX<caseX+caseWidth  && mouseY>caseY && mouseY<caseY+caseHeight) {
    stroke (caseColor);
    fill (caseColor);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  } else {
    strokeWeight(4);
    stroke (caseHoverOver);
    fill (caseHoverOver);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  }
}//end of paletteButton
  
