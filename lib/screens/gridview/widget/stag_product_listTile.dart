import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReaderTile extends StatelessWidget {
  final ImageProvider image;
  final double? height;
  final String title;
  final String subTitle;
  final String subTitle2;

  const ReaderTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.subTitle2,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Expanded(
            child: Image(
              image: image,
              fit: BoxFit.cover,
              height: height,
            ),
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            subTitle,
            style: const TextStyle(color: Colors.grey),
          ),
          Text(
            subTitle2,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
