function play() {
  var audio = document.getElementById('audio_play');
  if (audio.paused) {
    audio.play();
  }else{
    audio.pause();
    audio.currentTime = "seconds";
    }
  }