import 'package:flutter/material.dart';
import 'package:flutterfeb/screens/gridview/gridView1.dart';
import 'package:flutterfeb/screens/gridview/gridview3.dart';
import 'package:flutterfeb/screens/gridview/gridview5.dart';

import 'gridview/gridview4.dart';

class SliderEg extends StatefulWidget {
  const SliderEg({super.key});

  @override
  State<SliderEg> createState() => _SliderEgState();
}

class _SliderEgState extends State<SliderEg> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF151515),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF1E1D1D),
          currentIndex: index,
          onTap: (tappedIndex) {
            setState(() {
              index = tappedIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              activeIcon: Text(
                'Home',
                style: TextStyle(color: Colors.red.shade100),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              activeIcon:
                  Text('Search', style: TextStyle(color: Colors.red.shade100)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.book,
                color: Colors.white,
              ),
              activeIcon:
                  Text('book', style: TextStyle(color: Colors.red.shade100)),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
              activeIcon:
                  Text('menu', style: TextStyle(color: Colors.red.shade100)),
              label: '',
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: const Color(0xFF151515),
              title: Text(
                'Musify.',
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
                title: Text(
                  'Suggested playlists',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.red.shade100,
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
                          children: List.generate(5, (index) => Padding(
                            padding: const EdgeInsets.only(right: 40),
                            child: Container(
                              width: 200,
                              height: 200,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.red,
                                  border: Border.all()),
                            ),
                          ),),
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
                                  color: Colors.red.shade100,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: List.generate(10, (index) => ListTile(
                            leading: Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.red,
                              ),
                            ),
                            title: Text('Hero', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red.shade100),),
                            subtitle: Text('Sub tittle'),
                            trailing: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Wrap(
                                direction: Axis.horizontal,
                                children: [
                                  Icon(Icons.star_border),
                                  SizedBox(
                                    width: 18,
                                  ),
                                  Icon(Icons.download_outlined)
                                ],
                              ),
                            )),)

                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
