import 'package:flutter/material.dart';

class LayoutEg extends StatelessWidget {
  const LayoutEg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive with Layout Builder'),
      ),
      body: const ResponsiveEg(),
    );
  }
}

class ResponsiveEg extends StatelessWidget {
  const ResponsiveEg({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxHeight > 600) {
        return const WideLayout();
      } else {
        return const SmallLayout();
      }
    });
  }
}

class WideLayout extends StatelessWidget {
  const WideLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
            height: 100,
            color: Colors.green,
            child: Center(
              child: Text('sample '),
            )),
        Container(
            height: 100,
            color: Colors.red,
            child: Center(
              child: Text('sample'),
            )),
        Container(
            height: 100,
            color: Colors.blue,
            child: Center(
              child: Text('sample '),
            )),
        Container(
            height: 100,
            color: Colors.yellow,
            child: Center(
              child: Text('sample'),
            )),
      ]
    );
  }
}

class SmallLayout extends StatelessWidget {
  const SmallLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 200,
            color: Colors.red,
            child: Center(
              child: Text('sample 1'),
            )),
        Container(
            height: 200,
            color: Colors.blue,
            child: Center(
              child: Text('sample 2'),
            )),
        Container(
            height: 200,
            color: Colors.green,
            child: Center(
              child: Text('sample 3'),
            ))
      ]
    );
  }
}
