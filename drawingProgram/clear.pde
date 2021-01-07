void clearButInfo() {
  String clearButText="Clear";
  PFont clearFont;
  clearFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(clearFont, 40);
  //
  text(clearButText, clearX, clearY, clearWidth, clearHeight);
  fill(reset);
}//end of colorPalette



void clearButton() {
  if (mouseX>clearX && mouseX<clearX+clearWidth  && mouseY>clearY && mouseY<clearY+clearHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(clearX, clearY, clearWidth, clearHeight);
    stroke (reset);
    fill(reset);
    clearButInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(clearX, clearY, clearWidth, clearHeight);
    stroke (reset);
    fill(reset);
    clearButInfo();
  }
}//end of quitButton
