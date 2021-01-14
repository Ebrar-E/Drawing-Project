void musicButtonInfo() {
  String musicButText="Music";
  PFont musicFont;
  musicFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, TOP);
  textFont(musicFont, 40);
  //
  text(musicButText, musicX, musicY, musicWidth, musicHeight);
  fill(reset);
}//end of musicButtonInfo





void musicButton() {
  if  (mouseX>musicX && mouseX<musicX+musicWidth  && mouseY>musicY && mouseY<musicY+musicHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(musicX, musicY, musicWidth, musicHeight);
    stroke (reset);
    fill(reset);
    musicButtonInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(musicX, musicY, musicWidth, musicHeight);
    stroke (reset);
    fill(reset);
    musicButtonInfo();
  }
}//end of musicButton
