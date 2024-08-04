// import 'package:flutter/material.dart';
// import 'package:audioplayers/audioplayers.dart';

// class AudioPlayerWidget extends StatefulWidget {
//   final String audioPath;
//   @override
//   // ignore: overridden_fields
//   final Key? key;

//   const AudioPlayerWidget({required this.audioPath, this.key}) : super(key: key);

//   @override
//   _AudioPlayerWidgetState createState() => _AudioPlayerWidgetState();
// }

// class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
//   final AudioPlayer _player = AudioPlayer();

//   void _playAudio() async {
//     // Load the audio from assets and play it
//     await _player.setSource(AssetSource(widget.audioPath));
//     _player.play(AssetSource(widget.audioPath), mode: PlayerMode.MEDIA_PLAYER);  // Start playing the audio with the specified mode
//   }

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//       icon: const Icon(Icons.play_arrow),
//       onPressed: _playAudio,
//     );
//   }
// }
