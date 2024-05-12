import 'package:flutter/material.dart';
import 'package:flutterfeb/database/local_database/shared_preference/view/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../model/m.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late SharedPreferences preferences;
  String? email;


  @override
  void initState() {
    fetchData();
    super.initState();
  }

  void fetchData() async {
    preferences = await SharedPreferences.getInstance();
    setState(() {
      email = preferences.getString('email');
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Names> shohinee =
        names.map((e) => Names(name: e["name"], phone: e['phone'])).toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          title: Text(email!),
          actions: [
            IconButton(
                onPressed: () {
                  preferences.setBool('loggedIn', false);
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SharedPrefLogin()));
                },
                icon: const Icon(Icons.logout))
          ],
        ),
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
