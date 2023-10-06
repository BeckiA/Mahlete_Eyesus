import 'package:flutter/material.dart';
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
                  Positioned.fill(
                    child: GestureDetector(
                      onTap: () => print("Clicked"),
                      child: Card(
                        elevation: 1,
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(singer[index].photo))),
                          child: Text(singer[index].name),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.2),
                                  Colors.transparent
                                ])),
                      ))
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
