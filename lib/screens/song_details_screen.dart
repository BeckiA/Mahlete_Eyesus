import 'package:flutter/material.dart';

import '../models/song.dart';

class SongDetailsScreen extends StatelessWidget {
  SongDetailsScreen({super.key, required this.song});
  Song song;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.name),
      ),
    );
  }
}
