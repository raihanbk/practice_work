import 'package:flutter/material.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Product'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        // Check the screen width and set the number of columns accordingly
        int columns = constraints.maxWidth < 600 ? 3 : 6; // Change the threshold as needed
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: columns,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
          itemCount: 8, // Change the itemCount as needed
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            );
          },
        );
            },
            ),
      ),
    );
  }
}
