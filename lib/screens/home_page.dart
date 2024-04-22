import 'package:flutter/material.dart';

import '../model/m.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    List<Names> shohinee = names.map((e) => Names(name: e["name"], phone: e['phone'])).toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: List.generate(
            names.length,
            (index) => Card(
              child: ListTile(
                leading: CircleAvatar(
                  child: Image.asset('${names[index]['profile']}'),
                ),
                title: Text(shohinee[index].name),
                subtitle: Text('${names[index]['phone']}'),
                trailing:
                    IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}