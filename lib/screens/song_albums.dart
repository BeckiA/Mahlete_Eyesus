import 'package:flutter/material.dart';
import 'package:lyrics_app/models/singer.dart';

import '../widgets/singer_album_grid.dart';
import '../widgets/singer_name_header.dart';

class AlbumsScreen extends StatelessWidget {
  Singer singer;
  AlbumsScreen({super.key, required this.singer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${singer.name}s Album'),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SingerNameHeader(singer: singer),
              SingerAlbumGrid(singer: singer),
            ],
          ),
        ));
  }
}
