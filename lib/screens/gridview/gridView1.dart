import 'package:flutter/material.dart';
import 'package:flutterfeb/model/gridview1_item_list.dart';

class GridView1 extends StatelessWidget {
  const GridView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'GridView',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          children: List.generate(
              country.length,
              (index) => Container(
                    margin: const EdgeInsets.only(left: 5, top: 10, right: 5),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(country[index].img),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(10)),
                    child: Stack(
                      children: [
                         Positioned(
                            top: 150,
                            left: 10,
                            child: Text(
                              country[index].text,
                              style: const TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ))
                      ],
                    ),
                  ))),
    );
  }
}
