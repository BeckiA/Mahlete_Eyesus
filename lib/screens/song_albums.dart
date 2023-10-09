import 'package:flutter/material.dart';
import 'package:lyrics_app/models/singer.dart';

class AlbumsScreen extends StatelessWidget {
  Singer singer;
  AlbumsScreen({super.key, required this.singer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            padding: const EdgeInsets.all(7.0),
            alignment: Alignment.center,
            child: Text(
              singer.name,
              style: const TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Column(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                padding: const EdgeInsets.all(7.0),
                child: GridView.builder(
                  shrinkWrap: true,
                  // physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemCount: singer.albums.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () => print('HELLO'),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                alignment: Alignment.center,
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  singer.albums[index].photo,
                                )),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          singer.albums[index].name,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
