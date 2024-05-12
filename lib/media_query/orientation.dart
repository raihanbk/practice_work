import 'package:flutter/material.dart';

class OrientationEg extends StatelessWidget {
  const OrientationEg({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait ? const ListScreen() : const GridScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portrait View'),
      ),
      body: ListView.builder(
        itemCount: 10,
          itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text('Sample $index'),
          ),
        );
      }),
    );
  }
}

class GridScreen extends StatelessWidget {
  const GridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View'),
      ),
      body: GridView.builder(
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3),
          itemBuilder: (context, index) {
            return Card(
              child: Text('Grid Sample $index'),
            );
          }),
    );
  }
}
