import 'package:flutter/material.dart';
import 'package:lyrics_app/Utils/theme.dart';
import 'package:lyrics_app/screens/splash_screen.dart';
import 'screens/singers_screen.dart';

void main() => runApp(MaterialApp(
      title: 'ማህሌተ ኢየሱስ',
      theme: METheme.lightTheme,
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    ));
