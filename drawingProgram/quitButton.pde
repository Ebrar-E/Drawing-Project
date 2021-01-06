

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
  if (mouseX>quitButX && mouseX<quitButX+quitButWidth  && mouseY>quitButY && mouseY<quitButY+quitButHeight) {
    stroke (quitButColor);
    fill (quitButColor);
    rect(quitButX, quitButY, quitButWidth, quitButHeight);
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
