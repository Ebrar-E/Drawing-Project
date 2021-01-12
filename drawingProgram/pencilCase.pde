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
  if  (mouseX>caseX && mouseX<caseX+caseWidth  && mouseY>caseY && mouseY<caseY+caseHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(caseX, caseY, caseWidth, caseHeight);
    stroke (reset);
    fill(reset);
    caseButtonInfo();
  }
}//end of caseButton



void caseDownInfo() {
  String caseDownText="";
  PFont caseDownFont;
  caseDownFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(caseDownFont, 40);
  //
  text(caseDownText, caseDownX, caseDownY, caseDownWidth, caseDownHeight);
  fill(reset);
}//end of caseDownInfo


void caseDown() {
  if  (dropMenu1 == true && mouseX>caseX && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseDownY+caseDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(caseDownX, caseDownY, caseDownWidth, caseDownHeight);
    stroke (reset);
    fill(reset);
    caseDownInfo();
  } else if (dropMenu1 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(caseDownX, caseDownY, caseDownWidth, caseDownHeight);
    stroke (reset);
    fill(reset);
    caseDownInfo();
  }
}//end of caseDown 

void pressed() {
  if (mouseX>X && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseY+caseHeight) {
    caseDown = true;
  } else {
    caseDown = false;
  }
}//end of pressed
