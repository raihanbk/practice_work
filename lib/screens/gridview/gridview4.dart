import 'package:flutter/material.dart';

class GridView4 extends StatelessWidget {
  const GridView4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 10,
      children: List.generate(100, (index) => Card(
        child: Icon(Icons.flag, size: 40,),
      )),
      ),
    );
  }
}
