//Global Variables
//
//color set
color backgroundColor=#0B032D, textColor=#FFFFFF, reset=#FFFFFF, quitButColor=#F2161D, blackInk=#000000;
color quitButHoverOver=#D30F15, buttonColor=#843B62, buttonHoverOver=#621940, strokeColor=#F67E7D, buttonColor2=#FFB997, buttonHoverOver2=#F67E7D;
//canvas
float canvasX, canvasY, canvasWidth, canvasHeight;
//quit button
float quitButX, quitButY, quitButWidth, quitButHeight;
//color Palette
float paletteX, paletteY, paletteWidth, paletteHeight;
//pencil case
float caseX, caseY, caseWidth, caseHeight;
//line art
float artX, artY, artWidth, artHeight;
//clear
float clearX, clearY, clearWidth, clearHeight;
//undo 
float undoX, undoY, undoWidth, undoHeight;
//redo
float redoX, redoY, redoWidth, redoHeight;
//case down
float caseDownX, caseDownY, caseDownWidth, caseDownHeight;

//
//the booleans
boolean controlDown = false;
boolean shiftDown = false;
//
boolean sil=false, silOn=false, ciz=false, cizOn=false, caseDown=false, dropMenu=false;


Undo undo;


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
  //line art
  rect(artX, artY, artWidth, artHeight);
  //clear
  rect(clearX, clearY, clearWidth, clearHeight);
  //undo
  rect(undoX, undoY, undoWidth, undoHeight);
  //redo
  rect(redoX, redoY, redoWidth, redoHeight);
  //
  //
  undo = new Undo(10);
}//end of setup



void mouseReleased() {
  // Save each line we draw to our stack of UNDOs
  undo.takeSnap();
}

void draw() {
  quitButton();
  paletteButton();
  caseButton();
  artButton();
  clearButton();
  undoButton();
  redoButton();
  caseDown();
  //the lines
  //
  //
  if ( controlDown == true) {
    undoButton();
  }
}//end of draw



void keyPressed() {
  //to remind if you clicked CTRL or SHIFT 
  if (key == CODED) {
    if (keyCode == CONTROL) 
      controlDown = true;
    if (keyCode == SHIFT)
      shiftDown = true;
    return;
  } 
  //to know if it was a redo(control shift Z) or an undo(control Z)
  if (controlDown) {
    if (keyCode == 'Z') {
      if (shiftDown)
        undo.redo();
      else
        undo.undo();
    }
    return;
  }
    if (key=='s') {
      saveFrame("image####.png");
    }
  }//end of keyPressed


void keyreleased() {
  if (key == CODED) {
    if (keyCode == CONTROL) 
      controlDown = false;
    if (keyCode == SHIFT)
      shiftDown = false;
  }
}//end of keyReleased 



void mousePressed() {
  if ( mouseX>quitButX  && mouseX<quitButX+quitButWidth  && mouseY>quitButY && mouseY<quitButY+quitButHeight ) {
    {
      exit();
    }
  }
  //
  if (mouseX>caseX && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseY+caseHeight) {
    dropMenu = true;
  } else {
    dropMenu = false;
  }
  //
  if ( mouseX>=undoX && mouseX<=undoX+undoWidth && mouseY>=undoY && mouseY<=undoY+undoHeight ) {
    controlDown = true;
  }
  //
}//end of mousePressed




//the confusing part 
  class Undo {
  // Number ss taken
  int undoSteps=0, redoSteps=0;  
  CircImgCollection images;
  //
  Undo(int levels) {
    images = new CircImgCollection(levels);
  }

  public void takeSnap() {
    undoSteps = min(undoSteps+1, images.amount-1);
    // each time we draw we disable redo
    redoSteps = 0;
    images.next();
    images.capture();
  }
  public void undo() {
    if(undoSteps > 0) {
      undoSteps--;
      redoSteps++;
      images.prev();
      images.show();
    }
  }
  public void redo() {
    if(redoSteps > 0) {
      undoSteps++;
      redoSteps--;
      images.next();
      images.show();
    }
  }
}


class CircImgCollection {
  int amount, current;
  PImage[] img;
  CircImgCollection(int amountOfImages) {
    amount = amountOfImages;

    // Initialize all images as copies of the current display
    img = new PImage[amount];
    for (int i=0; i<amount; i++) {
      img[i] = createImage(width, height, RGB);
      img[i] = get();
    }
  }
  void next() {
    current = (current + 1) % amount;
  }
  void prev() {
    current = (current - 1 + amount) % amount;
  }
  void capture() {
    img[current] = get();
  }
  void show() {
    image(img[current], 0, 0);
  }
}
