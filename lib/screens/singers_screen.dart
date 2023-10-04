import 'package:flutter/material.dart';
import 'package:lyrics_app/constants/colors.dart';

import '../Utils/songs_helper.dart/songs_helper.dart';
import '../models/singer.dart';
import '../widgets/search_bar_widget.dart';

class SingersPage extends StatelessWidget {
  List<Singer> singer = SongHelper.getMockedSongs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ማህሌተ ኢየሱስ',
          style: TextStyle(fontSize: 30),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        const SearchBar(),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5 / 1.5,
            ),
            itemCount: singer.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(singer[index].photo))),
                    child: Text(singer[index].name),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
