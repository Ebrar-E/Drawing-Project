//Global Variables
//
//color set
color backgroundColor=#69585F, textColor=#FFFFFF, reset=#FFFFFF, quitButColor=#F2161D;
//canvas
float canvasX, canvasY, canvasWidth, canvasHeight;
//quit button
float quitButX, quitButY, quitButWidth, quitButHeight;





void setup() {
  fullScreen();
  background(backgroundColor);
  population();
  //
  //canvas
  rect(canvasX, canvasY, canvasWidth, canvasHeight);
  //quit button
  rect(quitButX, quitButY, quitButWidth, quitButHeight);
}//end of setup



void draw() {
  quitButton();
}//end of draw



void keyPressed() {
}//end of keyPressed



void mousePressed() {
}//end of mousePressed
