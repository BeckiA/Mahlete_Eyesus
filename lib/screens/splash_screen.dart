import 'dart:async';

import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/image_strings.dart';
import '../widgets/bottom_navigation_bar.dart';

class SplashScreen extends StatefulWidget {
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavBar(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: MEAccentColor,
        child: const Center(
          child: Image(image: AssetImage(MELogo)),
        ),
      ),
    );
  }
}
