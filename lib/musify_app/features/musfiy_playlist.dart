import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterfeb/musify_app/model/model.dart';

import '../utils/color.dart';

class MusifyPlaylist extends StatelessWidget {
  const MusifyPlaylist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF151515),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 120,
              backgroundColor: const Color(0xFF151515),
              title: Text(
                'Playlists',
                style: TextStyle(
                    color: Colors.red.shade100,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              centerTitle: true,
              floating: true,
              pinned: true,
              bottom: AppBar(
                  backgroundColor: const Color(0xFF151515),
                  title: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(40)),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          contentPadding:
                              const EdgeInsets.only(left: 20, top: 12),
                          suffixIcon: Icon(Icons.search),
                          suffixIconColor: MusifyColor.musPrimaryColor,
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            color: Colors.red.shade100,
                          ),
                          border: InputBorder.none),
                    ),
                  )),
            ),
            SliverToBoxAdapter(
              child: SizedBox(height: 40,),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  childCount: data.length,
                  (context, index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                            image: NetworkImage(data[index].playlistImg!)),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  // mainAxisSpacing: 15,
                  // crossAxisSpacing: 15
                ))
          ],
        ));
  }
}
