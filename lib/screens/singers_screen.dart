import 'package:flutter/material.dart';
import '../Utils/songs_helper.dart/songs_helper.dart';
import '../models/singer.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/singers_category_widget.dart';

class SingersPage extends StatelessWidget {
  List<Singer> singer = SongHelper.getMockedSongs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ማህሌተ ኢየሱስ',
          style: TextStyle(fontFamily: 'Montserrat', fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const SearchBar(),
        const SizedBox(
          height: 20,
        ),
        SingersCategoryWidget(singer: singer),
      ]),
    );
  }
}
