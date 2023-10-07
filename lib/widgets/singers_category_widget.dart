import 'package:flutter/material.dart';

import '../models/singer.dart';

class SingersCategoryWidget extends StatelessWidget {
  const SingersCategoryWidget({
    super.key,
    required this.singer,
  });

  final List<Singer> singer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1,
        ),
        itemCount: singer.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Stack(
            children: [
              Positioned.fill(
                child: GestureDetector(
                  onTap: () => print("Clicked"),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage(singer[index].photo))),
                    child: Text(
                      singer[index].name,
                      style: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 21,
                          color: Colors.white),
                      textAlign: TextAlign.center,
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
    );
  }
}
