void playButton() {
  //
  if  (mouseX>playX && mouseX<playX+playDiameter  && mouseY>playY && mouseY<playY+playDiameter) {
    stroke (buttonColor2);
    fill (buttonColor2);
    ellipse(playX, playY, playDiameter, playDiameter);
    //rect(915, 65, 85, 65);
    fill(jet);
    stroke(jet);
    triangle(950, 72, 950, 122, 980, 98);
    stroke (reset);
    fill(reset);
  } else {
    strokeWeight(4);
    stroke (buttonHoverOver2);
    fill (buttonHoverOver2);
    ellipse(playX, playY, playDiameter, playDiameter);
    //rect(915, 65, 85, 65);
    fill(jet);
    stroke(jet);
    triangle(950, 72, 950, 122, 980, 98);
    stroke (reset);
    fill(reset);
  }
  if (play)
    song[currentSong].play();
  else
    song[currentSong].pause();

  for (int i = 0; i < song[currentSong].bufferSize() - 1; i++) {}
}//end of playButton

void playPressed() {
  //play
  if (mouseX>207 && mouseX<296 &&   mouseY>267 && mouseY<329 ) {
    if (playButton == true) {
      playButton = false;
    } else{
      playButton = true;
    }
    println(playButton);
  }
  //
  //
  if ( mouseX > 915 && mouseX < 915 + 85 &&
    mouseY > 65 && mouseY < 265 + 85) {
    play = !play;
  }
}//end of playPressed
