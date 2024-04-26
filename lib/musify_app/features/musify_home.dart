import 'package:flutter/material.dart';
import 'package:flutterfeb/musify_app/features/player_page.dart';
import 'package:flutterfeb/musify_app/model/model.dart';
import 'package:flutterfeb/musify_app/utils/color.dart';

class MusifyHome extends StatefulWidget {
  const MusifyHome({super.key});

  @override
  State<MusifyHome> createState() => _MusifyHomeState();
}

class _MusifyHomeState extends State<MusifyHome> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF151515),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xFF151515),
              title: Text(
                'Musify.',
                style: TextStyle(
                    color: MusifyColor.musPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              centerTitle: true,
              floating: true,
              pinned: true,
              bottom: AppBar(
                backgroundColor: const Color(0xFF151515),
                title: Text(
                  'Suggested playlists',
                  style: TextStyle(
                      fontSize: 25,
                      color: MusifyColor.musPrimaryColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 1,
                (context, index) => Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Container(
                                width: 200,
                                height: 200,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            data[index].homeCoverImg!)),
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all()),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 35.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'Recommended for you',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: MusifyColor.musPrimaryColor,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: List.generate(
                            data.length,
                            (index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) => Player(
                                              musifyModel: data[index],
                                            )));
                              },
                              child: ListTile(
                                  leading: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image:
                                              NetworkImage(data[index].img!)),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  title: Text(
                                    data[index].title!,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: MusifyColor.musPrimaryColor),
                                  ),
                                  subtitle: Text(
                                    data[index].subTitle!,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                  trailing: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Wrap(
                                      direction: Axis.horizontal,
                                      children: [
                                        Icon(
                                          Icons.star_border,
                                          color: MusifyColor.musPrimaryColor,
                                        ),
                                        const SizedBox(
                                          width: 18,
                                        ),
                                        Icon(
                                          Icons.download_outlined,
                                          color: MusifyColor.musPrimaryColor,
                                        )
                                      ],
                                    ),
                                  )),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
