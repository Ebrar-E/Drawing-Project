void quitButtonInfo() {
  String quitButText="X";
  PFont quitFont;
  quitFont = createFont ("Gabriola", 95);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(quitFont, 30);
  //
  text(quitButText, quitButX, quitButY, quitButWidth, quitButHeight);
  fill(reset);
}//end of quitButtonInfo



void quitButton() {
  fill(quitButColor);
  stroke(quitButColor);
  rect(quitButX, quitButY, quitButWidth, quitButHeight);
  quitButtonInfo();
}//end of quitButton
