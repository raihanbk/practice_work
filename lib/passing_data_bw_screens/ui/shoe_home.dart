import 'package:flutter/material.dart';
import 'package:flutterfeb/passing_data_bw_screens/data/shoe_data.dart';
import 'package:flutterfeb/passing_data_bw_screens/ui/shoe_details.dart';

class ShoeHome extends StatelessWidget {
  const ShoeHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Brands'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        children: List.generate(
            shoe.length,
            (index) => Card(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ShoeDetails(
                                        shoe: shoe[index],
                                      )));
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                  image: NetworkImage(shoe[index].image))),
                        ),
                      ),
                      Text(
                        shoe[index].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                )),
      ),
    );
  }
}
