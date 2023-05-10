class AudioPlayer {
  void play() {
    print('Playing audio...');
  }
}

class AudioDecoder {
  void decode() {
    print('Decoding audio...');
  }
}

class AudioMixer {
  void mix() {
    print('Mixing audio...');
  }
}

class MusicPlayerFacade {
  final AudioPlayer _audioPlayer = AudioPlayer();
  final AudioDecoder _audioDecoder = AudioDecoder();
  final AudioMixer _audioMixer = AudioMixer();
  
  void playMusic() {
    _audioDecoder.decode();
    _audioMixer.mix();
    _audioPlayer.play();
  }
}


