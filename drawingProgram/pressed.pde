void pressed() {
  if (mouseX>X && mouseX<caseX+caseWidth && mouseY>caseY && mouseY<caseY+caseHeight) {
    caseDown = true;
  } else {
    caseDown = false;
  }
}//end of pressed
