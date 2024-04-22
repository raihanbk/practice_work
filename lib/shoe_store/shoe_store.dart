import 'package:flutter/material.dart';

class Shoes extends StatelessWidget {
  Shoes({super.key});

  final List<Map<String, dynamic>> shoes = [
    {
      "tittle": "Nike",
      "image": "https://c.static-nike.com/a/images/f_auto,cs_srgb/w_1536,c_limit/g1ljiszo4qhthfpluzbt/123-joyride-cdp-apla-xa-xp.jpg",
      "type": "Running Shoes Athletic\t Gym Tennis Shoes for Men",
      "price": 50
    },
    {
      "tittle": "Kapsen ",
      "image": "https://m.media-amazon.com/images/I/71HLIG03ymL.AC_SY675.jpg",
      "type": "Sneakers Workout Calzado para Hombre",
      "price": 80
    },
    {
      "tittle": "Nike ",
      "image":
          "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",
      "type": "Sneakers Workout Calzado para Hombre",
      "price": 140
    },
    {
      "tittle": "Jordan ",
      "image":
          "https://cdn.luxe.digital/media/20230927084701/best-jordans-of-all-time-ranking-list-luxe-digital.jpg",
      "type": "Sneakers Workout Calzado para Hombre",
      "price": 120
    },
    {
      "tittle": "Kapsen ",
      "image":
          "https://th.bing.com/th/id/OIP.G83KJGfKeS-_nDzzEE84aAHaF5?rs=1&pid=ImgDetMain",
      "type": "Sneakers Workout Calzado para Hombre",
      "price": 145
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:
              const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 20),
          child: Container(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.58),
                itemCount: shoes.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.all(5),
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(shoes[index]["image"]),
                                fit: BoxFit.fill)),
                      ),
                      Text(
                        shoes[index]["tittle"],
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                      Expanded(
                          child: Text(
                        shoes[index]["type"],
                        style: const TextStyle(color: Colors.grey),
                      )),
                      Text(
                        "\$ ${shoes[index]["price"]}",
                        style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      )
                    ],
                  );
                }),
          ),
        ),
        );
  }
}
