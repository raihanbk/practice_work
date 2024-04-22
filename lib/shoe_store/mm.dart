import 'package:flutter/material.dart';
import 'package:flutterfeb/shoe_store/shoe_store.dart';

class ShoeStore extends StatelessWidget {
  const ShoeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            appBar: AppBar(
              title: const Text("All Shoes", style: TextStyle(fontWeight: FontWeight.bold),),
              centerTitle: true,
              actions: const [
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.search_outlined,
                    size: 30,
                  ),
                )
              ],
              bottom: const TabBar(
                tabs: [
                  Text("All",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                  Text("Lifestyle",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Jordan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                  Text("Running",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      )),
                ],
                indicatorColor: Colors.black,
              ),
            ),
            body: TabBarView(
              children: [
                Shoes(),
                Shoes(),
                Shoes(),
                Shoes(),
              ],
            ),
            bottomSheet: NavigationBar(
              indicatorColor: Colors.white,
              surfaceTintColor: Colors.white,
              selectedIndex: 1,
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(
                    icon: Icon(Icons.search_outlined), label: "Shop"),
                NavigationDestination(
                    icon: Icon(Icons.favorite_outline), label: "Favorite"),
                NavigationDestination(
                    icon: Icon(Icons.shopping_bag_outlined), label: "Bag"),
              ],
            )));
  }
}
