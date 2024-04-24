import 'package:flutter/material.dart';
import 'package:flutterfeb/tourism_app_1/model/model.dart';
import 'package:flutterfeb/tourism_app_1/ui/detail_page.dart';

class TourismHome extends StatelessWidget {
  const TourismHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.deepPurple,
          bottom: AppBar(
            title: const Text(
              'Popular',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: List.generate(
                countries.length,
                (index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CountryDetails(
                                        country: countries[index],
                                      )));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      NetworkImage(countries[index].img))),
                          width: MediaQuery.of(context).size.width,
                          height: 200,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 25, top: 145),
                            child: Text(
                              countries[index].name,
                              style: const TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    )),
          ),
        )
      ],
    ));
  }
}
