import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../models/song.dart';
import '../widgets/option_popup_widget.dart';

class SongDetailsScreen extends StatefulWidget {
  SongDetailsScreen({super.key, required this.song});
  Song song;

  @override
  State<SongDetailsScreen> createState() => _SongDetailsScreenState();
}

class _SongDetailsScreenState extends State<SongDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.song.name),
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        alignment: Alignment.center,
        child: SelectableText(
          cursorColor: MEAccentColor,
          showCursor: true,
          // ignore: deprecated_member_use
          toolbarOptions: const ToolbarOptions(
              copy: true, selectAll: true, cut: false, paste: false),
          widget.song.songLyrics['lyrics'].toString(),
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, height: 1.3),
        ),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MEWhiteColor,
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return SizedBox(
                child: AlertDialog(
                  alignment: Alignment.bottomRight,
                  content: Column(
                    children: [
                      OptionPopup(
                        message: "መዝሙሩን ያጋሩት",
                        icon: Icons.share,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      OptionPopup(message: "ኮፒ ያድርጉ", icon: Icons.copy),
                      const SizedBox(
                        height: 10,
                      ),
                      OptionPopup(message: "ይውደዱ", icon: Icons.favorite)
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.ios_share_rounded, color: MEAccentColor),
      ),
    );
  }
}
