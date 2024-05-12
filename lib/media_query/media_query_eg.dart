import 'package:flutter/material.dart';

class MediaQueryEg extends StatelessWidget {
  const MediaQueryEg({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    bool isLargeScreen = width > 600;
    return Scaffold(
      body: isLargeScreen == true ? BigScreen() : SmallScreen(),
    );
  }
}

class BigScreen extends StatelessWidget {
  const BigScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.menu),
            SizedBox(
              width: 30,
            ),
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/e/e1/Logo_of_YouTube_%282015-2017%29.svg'),
            SizedBox(
              width: 50,
            ),
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
            ),
            SizedBox(
              width: 30,
            ),
            Icon(Icons.keyboard_voice),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Row(
              children: [
                Icon(Icons.video_call),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.notification_important),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Row(
              children: [
                Icon(Icons.menu),
                SizedBox(
                  width: 30,
                ),
                Image.network(
                    'https://upload.wikimedia.org/wikipedia/commons/e/e1/Logo_of_YouTube_%282015-2017%29.svg'),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.search),
                SizedBox(
                  width: 10,
                ),
                Icon(Icons.keyboard_voice),
              ],
            ),
          ],
        ),
        actions: [
            Icon(Icons.video_call),
          SizedBox(
            width: 10,
          ),
            Icon(Icons.notification_important),
          SizedBox(
            width: 10,
          ),
            CircleAvatar(
              child: Icon(Icons.person),
            ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
