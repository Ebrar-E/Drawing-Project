void undoInfo() {
  String undoText="Undo";
  PFont undoFont;
  undoFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(undoFont, 25);
  //
  text(undoText, undoX, undoY, undoWidth, undoHeight);
  fill(reset);
}//end of caseButtonInfo



void undoButton() {
  if (mouseX>undoX && mouseX<undoX+undoWidth  && mouseY>undoY && mouseY<undoY+undoHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(undoX, undoY, undoWidth, undoHeight);
    stroke (reset);
    fill(reset);
    undoInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(undoX, undoY, undoWidth, undoHeight);
    stroke (reset);
    fill(reset);
    undoInfo();
  }
}//end of paletteButton
