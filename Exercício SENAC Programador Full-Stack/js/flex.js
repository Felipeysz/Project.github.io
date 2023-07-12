let video = document.getElementsByClassName("videozinho")[0];

function play() {
  video.play();
  video.playbackRate = 1;
}

function pause() {
  video.pause();
}
function stop() {
  video.pause();
  video.currentTime = 0;
}
function dec() {
  video.playbackRate -= 0.1;
}
function inc() {
  video.playbackRate += 0.1;
}
function retroceder() {
  video.currentTime = -10;
}
function avancar() {
  video.currentTime = +10;
}
function cheio() {
  video.requestFullscreen = Enable;
}
