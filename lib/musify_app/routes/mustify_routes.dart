import 'package:flutter/material.dart';
import 'package:flutterfeb/musify_app/features/musfiy_playlist.dart';
import 'package:flutterfeb/musify_app/features/musify_home.dart';
import 'package:flutterfeb/musify_app/features/musify_menu.dart';
import 'package:flutterfeb/musify_app/features/musify_search.dart';

import '../utils/color.dart';

class RoutesMusify extends StatefulWidget {
  const RoutesMusify({super.key});

  @override
  State<RoutesMusify> createState() => _RoutesMusifyState();
}

class _RoutesMusifyState extends State<RoutesMusify> {
  int index = 0;

  final List tabs = [
    MusifyHome(),
    MusifySearch(),
    MusifyPlaylist(),
    MusifyMenu(),
  ];

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
              style: TextStyle(color: MusifyColor.musPrimaryColor),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            activeIcon: Text('Search',
                style: TextStyle(color: MusifyColor.musPrimaryColor)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.book,
              color: Colors.white,
            ),
            activeIcon: Text('Playlists',
                style: TextStyle(color: MusifyColor.musPrimaryColor)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            activeIcon: Text('menu',
                style: TextStyle(color: MusifyColor.musPrimaryColor)),
            label: '',
          ),
        ],
      ),
      body: tabs[index],
    );
  }
}
