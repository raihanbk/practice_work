import 'package:flutterfeb/musify_app/data/data.dart';

class MusifyModel {
  final String? img;
  final String? title;
  final String? subTitle;
  final String? homeCoverImg;
  final String? playlistImg;

  MusifyModel({
    this.img,
    this.title,
    this.subTitle,
    this.homeCoverImg,
    this.playlistImg,
  });
}

List<MusifyModel> data = musifyData
    .map((e) => MusifyModel(
        img: e['img'],
        title: e['title'],
        subTitle: e['subTitle'],
        homeCoverImg: e['homeCoverImg'],
        playlistImg: e['playlistImg']))
    .toList();
