import 'dart:math';

import 'package:flutter/material.dart';

class GridView3 extends StatelessWidget {
  const GridView3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 1.8,
        children: List.generate(
            10,
            (index) => Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: const Center(
                      child: ListTile(
                        leading: Icon(Icons.home, size: 40, color: Colors.grey),
                        title: Text('Heart \nShaker', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                )),
      ),
    );
  }
}
