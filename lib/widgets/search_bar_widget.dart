import 'package:flutter/material.dart';

import '../constants/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 25, right: 25, bottom: 5),
      padding: const EdgeInsets.all(15),
      // height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.height * 0.75,
      decoration: BoxDecoration(
        color: MEWhiteColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Text(
            "Search here...",
            style: TextStyle(fontSize: 25, color: Colors.grey),
          ),
          Icon(
            Icons.search_outlined,
            size: 30,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
