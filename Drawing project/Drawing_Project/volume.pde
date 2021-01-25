void vol() {
if ( key=='=' || key=='+' || mouseX>VolUpX && mouseX<VolUpX + VolUpWidth && mouseY>VolUpY && mouseY<VolUpY+ VolupHeight) { 
    ampvol = 5.0+song[currentSong].getGain();
    song[currentSong].setGain(ampvol);
}

if ( key=='-' || key=='_' || mouseX>VolUpX && mouseX<VolDownX + VolDownWidth && mouseY>VolDownY && mouseY<VolDownY+ VolDownHeight) { 
    ampvol = song[currentSong].getGain() - 5.0;
    song[currentSong].setGain(ampvol);
}

 if ( key=='m' || key=='M' || mouseX>muteX && mouseX<muteX + muteWidth && mouseY>muteY && mouseY<muteY+ muteHeight) {
    if ( song[currentSong].isMuted() ) {
      song[currentSong].unmute();
    } else {
      song[currentSong].mute();
    }
  }
}
