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
}//end of lineArtInfo



void artButton() {
  if (mouseX>artX && mouseX<artX+artWidth  && mouseY>artY && mouseY<artY+artHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
    artDown();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(artX, artY, artWidth, artHeight);
    stroke (reset);
    fill(reset);
    lineArtInfo();
    artDown();
  }
}//end of artButton
  
  
void artDownInfo() {
  String artDownText="Art 1";
  PFont artDownFont;
  artDownFont = createFont ("Verdana", 20);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(artDownFont, 20);
  //
  text(artDownText, artDownX, artDownY, artDownWidth, artDownHeight);
  fill(reset);
}//end of caseDownInfo
  
  
void artDown() {
  if  (dropMenu3 == true && mouseX>artX && mouseX<artX+artWidth && mouseY>artY && mouseY<artDownY+artDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(artDownX, artDownY, artDownWidth, artDownHeight);
    stroke (reset);
    fill(reset);
    artDownInfo();
  } else if (dropMenu3 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(artDownX, artDownY, artDownWidth, artDownHeight);
    stroke (reset);
    fill(reset);
    artDownInfo();
  }
}//end of caseDown 
