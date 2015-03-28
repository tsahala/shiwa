var SOUND_URL01,
    SOUND_URL02,
    SOUND_URL03,
    SOUND_URL04,
    SOUND_URL05,
    SOUND_URL06,
    SupportedAudioContext,
    buffer,
    context,
    e;

SOUND_URL01 = 'assets/sounds/01.mp3';
SOUND_URL02 = 'assets/sounds/02.mp3';
SOUND_URL03 = 'assets/sounds/03.mp3';
SOUND_URL04 = 'assets/sounds/04.mp3';
SOUND_URL05 = 'assets/sounds/05.mp3';
SOUND_URL06 = 'assets/sounds/06.mp3';

SupportedAudioContext = void 0;

try {
  SupportedAudioContext = window.AudioContext || window.webkitAudioContext;
} catch (_error) {
  e = _error;
  throw new Error('Web Audio API is not supported.');
}

context = new SupportedAudioContext;

buffer = void 0;

(function() {
  var request;
  request = new XMLHttpRequest;
  request.open('GET', SOUND_URL, true);
  request.responseType = 'arraybuffer';
  request.send();
  request.onload = function() {
    context.decodeAudioData(request.response, function(buf) {
      buffer = buf;
    });
  };
})();

$('.btn01').on('click', function(e) {
  var source01;
  e.preventDefault();
  source01 = context.createBufferSource();
  source01.buffer = buffer;
  source01.connect(context.destination);
  source01.start(0);
});

$('.btn02').on('click', function(e) {
  var source02;
  e.preventDefault();
  source02 = context.createBufferSource();
  source02.buffer = buffer;
  source02.connect(context.destination);
  source02.start(0);
});