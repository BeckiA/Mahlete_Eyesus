import 'package:flutter/material.dart';
import 'package:lyrics_app/constants/colors.dart';

import '../widgets/search_bar_widget.dart';

class SingersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Mahlete Eyesus')),
        body: Column(
          children: [SearchBar()],
        ));
  }
}
