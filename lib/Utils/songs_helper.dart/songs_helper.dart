import 'package:lyrics_app/models/albums.dart';
import 'package:lyrics_app/models/singer.dart';
import 'package:lyrics_app/models/song.dart';

class SongHelper {
  getMockedSongs() {
    return [
      Singer(name: 'Hawaz', photo: 'photo', singerId: 's-01', albums: [
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
