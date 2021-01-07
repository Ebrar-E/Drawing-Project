//Global Variables
//
//color set
color backgroundColor=#0B032D, textColor=#FFFFFF, reset=#FFFFFF, quitButColor=#F2161D;
color quitButHoverOver=#D30F15, buttonColor=#843B62, buttonHoverOver=#621940, strokeColor=#F67E7D;
//canvas
float canvasX, canvasY, canvasWidth, canvasHeight;
//quit button
float quitButX, quitButY, quitButWidth, quitButHeight;
//color Palette
float paletteX, paletteY, paletteWidth, paletteHeight;
//pencil case
float caseX, caseY, caseWidth, caseHeight;





void setup() {
  fullScreen();
  background(backgroundColor);
  population();
  //
  //canvas
  
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  //quit button
  rect(quitButX, quitButY, quitButWidth, quitButHeight);
  //color palette
  rect(paletteX, paletteY, paletteWidth, paletteHeight);
  //pencil case
  rect(caseX, caseY, caseWidth, caseHeight);
}//end of setup



void draw() {
  quitButton();
  paletteButton();
  caseButton();
}//end of draw



void keyPressed() {
}//end of keyPressed



void mousePressed() {
  if ( mouseX>quitButX  && mouseX<quitButX+quitButWidth  && mouseY>quitButY && mouseY<quitButY+quitButHeight ) {
     {exit();}
  }
}//end of mousePressed
