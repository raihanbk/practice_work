import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BtmSheet extends StatelessWidget {
  const BtmSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Sheet'),
      ),
      body: SizedBox(
        height: 50,
        child: TextButton(
          onPressed: () {
            showSheet(context);
          },
          child: Text('Click here to open Bottom sheet'),
        ),
      ),
    );
  }
  Future showSheet(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: GridView.count(
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
              crossAxisCount: 3,
              children: [
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Colors.lightBlue.shade200,
                      size: 50,
                    ),
                    Text('Shopping'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Color(0xFFDCCBFD),
                      size: 50,
                    ),
                    Text('Education'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Colors.blue,
                      size: 50,
                    ),
                    Text('Personal'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Color(0xFFF66672),
                      size: 50,
                    ),
                    Text('Office'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Color(0xFFFDB124),
                      size: 50,
                    ),
                    Text('Part time'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.solidFolder,
                      color: Color(0xFF6A6B6B),
                      size: 50,
                    ),
                    Text('Other'),
                  ],
                ),
                Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.folderPlus,
                      color: Color(0xFFFD6D41),
                      size: 50,
                    ),
                    Text('New'),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
