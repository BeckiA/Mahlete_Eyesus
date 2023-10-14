import 'package:flutter/material.dart';
import '../models/song.dart';

class SongDetailsScreen extends StatelessWidget {
  SongDetailsScreen({super.key, required this.song});
  Song song;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(song.name),
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        alignment: Alignment.center,
        child: Text(
          song.songLyrics['lyrics'].toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18),
        ),
      )),
    );
  }
}
