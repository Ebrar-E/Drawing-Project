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
}//end of undoInfo



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
}//end of undobutton







void redoInfo() {
  String redoText="Redo";
  PFont redoFont;
  redoFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(redoFont, 25);
  //
  text(redoText, redoX, redoY, redoWidth, redoHeight);
  fill(reset);
}//end of undoInfo



void redoButton() {
  if (mouseX>redoX && mouseX<redoX+redoWidth  && mouseY>redoY && mouseY<redoY+redoHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(redoX, redoY, redoWidth, redoHeight);
    stroke (reset);
    fill(reset);
    redoInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(redoX, redoY, redoWidth, redoHeight);
    stroke (reset);
    fill(reset);
    redoInfo();
  }
}//end of undobutton
