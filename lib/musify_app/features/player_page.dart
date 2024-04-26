import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/musify_app/utils/color.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/model.dart';

class Player extends StatefulWidget {
  const Player({super.key, required this.musifyModel});

  final MusifyModel musifyModel;

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  bool isPlaying = false;
  late final AudioPlayer player;
  late final AssetSource path;

  Duration duration = const Duration();
  Duration position = const Duration();

  @override
  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF2F2525),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.keyboard_arrow_down_outlined,
              color: MusifyColor.musPrimaryColor,
              size: 40,
            )),
        title: Text(
          'Now playing',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: MusifyColor.musPrimaryColor),
        ),
      ),
      backgroundColor: Color(0xFF2F2525),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                      image: NetworkImage(widget.musifyModel.img!),
                      fit: BoxFit.cover)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: Text(
                widget.musifyModel.title!,
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: MusifyColor.musPrimaryColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                widget.musifyModel.subTitle!,
                style: const TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
            const SizedBox(height: 10),
            Slider(
              value: position.inSeconds.toDouble(),
              onChanged: (value) async {
                await player.seek(Duration(seconds: value.toInt()));
                setState(() {});
              },
              min: 0,
              max: duration.inSeconds.toDouble(),
              inactiveColor: Colors.white,
              activeColor: MusifyColor.musPrimaryColor,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "00:02",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  "03.50",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 35),
            Stack(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const FaIcon(
                      FontAwesomeIcons.random,
                      color: Colors.white,
                      size: 18,
                    ),
                    const SizedBox(width: 30),
                    const FaIcon(
                      FontAwesomeIcons.backwardStep,
                      color: Colors.grey,
                      size: 50,
                    ),
                    const SizedBox(width: 5),
                    Icon(
                      Icons.pause_circle,
                      color: MusifyColor.musPrimaryColor,
                      size: 90,
                    ),
                    const SizedBox(width: 5),
                    const FaIcon(
                      FontAwesomeIcons.forwardStep,
                      color: Colors.grey,
                      size: 50,
                    ),
                    const SizedBox(width: 30),
                    const FaIcon(
                      FontAwesomeIcons.repeat,
                      color: Colors.white,
                      size: 18,
                    ),
                  ],
                ),
                const Positioned(
                    child: FaIcon(
                  FontAwesomeIcons.download,
                  color: Colors.white,
                      size: 20,
                )),
                const Positioned(
                    left: 350,
                    child: FaIcon(
                      FontAwesomeIcons.star,
                      color: Colors.white,
                      size: 20,
                    )),
                const Positioned(
                    top: 60,
                    child: FaIcon(
                      FontAwesomeIcons.volumeMute,
                      color: Colors.white,
                      size: 20,
                    )),
                const Positioned(
                    top: 60,
                    left: 350,
                    child: FaIcon(
                      FontAwesomeIcons.music,
                      color: Colors.white,
                      size: 20,
                    )),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'Playlist   |   Lyrics',
              style:
                  TextStyle(fontSize: 18, color: MusifyColor.musPrimaryColor),
            )
          ],
        ),
      ),
    );
  }
}
