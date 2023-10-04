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
            photo: 'photo',
            realeasedDate: DateTime.now(),
            albumNumber: 03,
            songs: [
              Song(
                  name: 'የአሜን ነው',
                  songLyrics: {'lyrics': 'Ambenbfnbndbfbmnsjfjsjfjsj'})
            ])
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
