import 'package:flutter/material.dart';
import 'package:lyrics_app/constants/colors.dart';
import 'package:lyrics_app/screens/singers_screen.dart';

import '../screens/favorites_sceeen.dart';

class BottomNavBar extends StatefulWidget {
  _BottomNavBar createState() => _BottomNavBar();
}

class _BottomNavBar extends State<BottomNavBar> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = [SingersPage(), FavoritesPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          // backgroundColor: MEAccentColor,

          mouseCursor: SystemMouseCursors.grab,

          unselectedIconTheme: const IconThemeData(size: 25),
          selectedFontSize: 18,
          unselectedFontSize: 16,
          selectedIconTheme:
              const IconThemeData(color: MEAccentColor, size: 30),
          selectedItemColor: MEAccentColor,
          unselectedItemColor: MEAcronymColor,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Songs',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorite'),
          ],
          currentIndex: _selectedIndex,
          onTap: (value) {
            setState(() {
              _selectedIndex = value;
            });
          },
        ),
        body: _pages.elementAt(_selectedIndex));
  }
}
