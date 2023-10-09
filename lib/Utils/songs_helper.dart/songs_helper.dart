import 'package:lyrics_app/models/albums.dart';
import 'package:lyrics_app/models/singer.dart';
import 'package:lyrics_app/models/song.dart';

import '../../constants/image_strings.dart';

class SongHelper {
  static List<Singer> getMockedSongs() {
    return [
      Singer(name: 'ዘማሪ ሃዋዝ ተገኝ', photo: GSHawaz, singerId: 's-01', albums: [
        Albums(
            name: 'ይቅርታ',
            photo: yikirta,
            realeasedDate: DateTime.now(),
            albumNumber: 03,
            songs: [
              Song(
                  name: 'የአሜን ነው',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ]),
        Albums(
            name: 'የእረፍቴ ቦታ',
            photo: yeErefteBota,
            albumNumber: 02,
            realeasedDate: DateTime.now(),
            songs: [
              Song(
                  name: 'መሃናየም',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ]),
        Albums(
            name: 'ኖላዊ ሄር',
            photo: nolawiHer,
            albumNumber: 04,
            realeasedDate: DateTime.now(),
            songs: [
              Song(
                  name: 'ብወድህ',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ]),
        Albums(
            name: 'ልሻገረው',
            photo: lshagerew,
            albumNumber: 04,
            realeasedDate: DateTime.now(),
            songs: [
              Song(
                  name: 'ልሻገረው',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ]),
      ]),
      Singer(
          name: 'ዘማሪት ዘመናይ ጎሳዬ',
          photo: GSZemenay,
          singerId: 's-02',
          albums: [
            Albums(
                name: 'ካህኔ',
                photo: 'photo',
                realeasedDate: DateTime.now(),
                albumNumber: 03,
                songs: [
                  Song(
                      name: 'ካህኔ',
                      songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
                ])
          ]),
      Singer(name: 'Hawaz', photo: GSHawaz, singerId: 's-01', albums: [
        Albums(
            name: 'ይቅርታ',
            photo: 'photo',
            realeasedDate: DateTime.now(),
            albumNumber: 03,
            songs: [
              Song(
                  name: 'የአሜን ነው',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ])
      ])
    ];
  }
}
