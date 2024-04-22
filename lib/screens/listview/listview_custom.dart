import 'package:flutter/material.dart';

class ListViewCustom extends StatelessWidget {
  const ListViewCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
        childCount: 5,
              (context, index) => const ListTile(
        title: Text('Title'),
        subtitle: Text('SubTitle'),
      )))
    );
  }
}
