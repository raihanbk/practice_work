import 'package:flutter/material.dart';

import '../model/m.dart';

class DrawerEg extends StatelessWidget {
  DrawerEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent.shade400,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        title: const Text('Transparent Drawer'),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          backgroundColor: Colors.transparent,
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      child: Icon(Icons.person),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Text(
                      'Raihan BK',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      'raihanbk@gmail.com',
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.60,
                      child: OutlinedButton(
                          onPressed: () {},
                          child: const Text(
                            'SIGN OUT',
                            style: TextStyle(color: Colors.white),
                          )),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: List.generate(
                          items1.length,
                          (index) => ListTile(
                                title: Text(
                                  itemsFirst[index].title,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                leading: itemsFirst[index].icon,
                              )),
                    ),
                    const Divider(
                      color: Colors.white,
                      thickness: 2,
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 15.0, top: 10, bottom: 20),
                child: Text(
                  'Communicate',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                title: Text('Privacy Policy',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.lock, color: Colors.white,),
              ),
              const ListTile(
                title: Text('Contact Us',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.lock, color: Colors.white,),
              ),
              const ListTile(
                title: Text('About App',
                    style: TextStyle(color: Colors.white)),
                leading: Icon(Icons.lock, color: Colors.white,),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.deepPurpleAccent.shade400,
            Colors.deepPurpleAccent.shade400,
            Colors.deepPurpleAccent.shade400
          ])
        ),
      ),
    );
  }
}
