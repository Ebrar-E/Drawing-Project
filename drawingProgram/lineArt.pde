void lineArtInfo() {
  String lineArtText="Line Art";
  PFont artFont;
  artFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artFont, 40);
  //
  text(lineArtText, artX, artY, artWidth, artHeight);
  fill(reset);
}//end of caseButtonInfo



void artButton() {
  if (mouseX>artX && mouseX<artX+artWidth  && mouseY>artY && mouseY<artY+artHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
  }
}//end of paletteButton
  
