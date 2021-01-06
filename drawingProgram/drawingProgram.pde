//Global Variables
//
//color set
color backgroundColor=#205072, textColor=#FFFFFF, reset=#FFFFFF, quitButColor=#F2161D;
color quitButHoverOver=#D30F15, paletteColor=#329D9C;
//canvas
float canvasX, canvasY, canvasWidth, canvasHeight;
//quit button
float quitButX, quitButY, quitButWidth, quitButHeight;
//color Palette
float paletteX, paletteY, paletteWidth, paletteHeight;





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
}//end of setup



void draw() {
  quitButton();
}//end of draw



void keyPressed() {
}//end of keyPressed



void mousePressed() {
}//end of mousePressed
