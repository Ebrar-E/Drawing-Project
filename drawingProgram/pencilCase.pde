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
