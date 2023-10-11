import 'package:flutter/material.dart';

import '../models/singer.dart';

class SingerNameHeader extends StatelessWidget {
  const SingerNameHeader({
    super.key,
    required this.singer,
  });

  final Singer singer;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
