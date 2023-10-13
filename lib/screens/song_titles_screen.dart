import 'package:flutter/material.dart';
import 'package:lyrics_app/constants/colors.dart';
import 'package:lyrics_app/models/albums.dart';
import 'package:lyrics_app/screens/song_details_screen.dart';
import '../models/singer.dart';
import '../models/song.dart';

class SongListScreen extends StatelessWidget {
  SongListScreen(
      {super.key,
      required this.songs,
      required this.albumName,
      required this.singer});
  List<Song> songs;
  final Singer singer;
  final Albums albumName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(albumName.name),
      ),
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: MEWhiteColor,
              ),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return SongDetailsScreen(
                        song: songs[index],
                      );
                    },
                  ));
                },
                child: ListTile(
                  leading: Text(
                    '${index + 1}',
                    style: const TextStyle(fontSize: 21),
                  ),
                  title: Text(
                    songs[index].name,
                    style: const TextStyle(fontSize: 21),
                  ),
                  subtitle: Text(
                    singer.name,
                    style: const TextStyle(fontSize: 16),
                  ),
                  trailing: const Icon(
                    Icons.arrow_right,
                    size: 30,
                  ),
                ),
              ));
        },
      ),
    );
  }
}
