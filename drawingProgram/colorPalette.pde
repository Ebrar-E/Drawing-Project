void paletteButtonInfo() {
  String paletteButText="Color Palette";
  PFont paletteFont;
  paletteFont = createFont ("Gabriola", 60);
  //
  fill(textColor);
  textAlign(CENTER, CENTER);
  textFont(paletteFont, 40);
  //
  text(paletteButText, paletteX, paletteY, paletteWidth, paletteHeight);
  fill(reset);
}//end of paletteButtonInfo



void paletteButton() {
  if (mouseX>paletteX && mouseX<paletteX+paletteWidth  && mouseY>paletteY && mouseY<paletteY+paletteHeight) {
    stroke (buttonColor);
    fill (buttonColor);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver);
    fill (buttonHoverOver);
    rect(paletteX, paletteY, paletteWidth, paletteHeight);
    stroke (reset);
    fill(reset);
    paletteButtonInfo();
  }
}//end of paletteButton



void colorboxes() {
  //1
  fill(yelCrayola);
  rect(colorB1X, colorB1Y, colorBWidth, colorBHeight);
  //2
  fill(vegasG);
  rect(colorB2X, colorB2Y, colorBWidth, colorBHeight);
  //3
  fill(sage);
  rect(colorB3X, colorB3Y, colorBWidth, colorBHeight);
  //4
  fill(cadBlue);
  rect(colorB4X, colorB4Y, colorBWidth, colorBHeight);
  //
  //5
  fill(mMint);
  rect(colorB5X, colorB5Y, colorBWidth, colorBHeight);
  //6
  fill(celandon);
  rect(colorB6X, colorB6Y, colorBWidth, colorBHeight);
  //7
  fill(fgreen);
  rect(colorB7X, colorB7Y, colorBWidth, colorBHeight);
  //8
  fill(dgreen);
  rect(colorB8X, colorB8Y, colorBWidth, colorBHeight);
  //
  //9
  fill(ashG);
  rect(colorB9X, colorB9Y, colorBWidth, colorBHeight);
  //10
  fill(grullo);
  rect(colorB10X, colorB10Y, colorBWidth, colorBHeight);
  //11
  fill(lgray);
  rect(colorB11X, colorB11Y, colorBWidth, colorBHeight);
  //12
  fill(jet);
  rect(colorB12X, colorB12Y, colorBWidth, colorBHeight);
  //
  //
  //1
  if (yelCrayolaInk == true) {
    ink = yelCrayola;
  }
  //2
  if (vegasGInk == true) {
    ink = vegasG;
  }
  //3
  if (sageInk == true) {
    ink = sage;
  }
  //4
  if (cadBlueInk == true) {
    ink = cadBlue;
  }
  //5
  if (mMintInk == true) {
    ink = mMint;
  }
  //6
  if (celandonInk == true) {
    ink = celandon;
  }
  //7
  if (fgreenInk == true) {
    ink = fgreen;
  }
  //8
  if (dgreenInk == true) {
    ink = dgreen;
  }
  //9
  if (ashGlInk == true) {
    ink = ashG;
  }
  //10
  if (grulloInk == true) {
    ink = grullo;
  }
  //11
  if (lgrayInk == true) {
    ink = lgray;
  }
  //12
  if (jetInk == true) {
    ink = jet;
  }
}//end of color boxes



void colorDown() {
  if  (dropMenu2 == true && mouseX>paletteX && mouseX<paletteX+paletteWidth && mouseY>paletteY && mouseY<colorDownY+colorDownHeight) {
    stroke (buttonColor2);
    fill (buttonColor2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
  } else if (dropMenu2 == true) {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    rect(colorDownX, colorDownY, colorDownWidth, colorDownHeight);
    stroke (reset);
    fill(reset);
  }
}//end of colorDown
