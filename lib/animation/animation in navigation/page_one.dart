import 'package:flutter/material.dart';
import 'package:flutterfeb/animation/animation%20in%20navigation/page_two.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) {
                    return const SecondPage();
                  },
                  transitionsBuilder: (context, animation1, animation2, child) {
                    return FadeTransition(
                      opacity: animation1,
                      child: child,
                    );
                  },
                ));
          },
          child: const Text('Second Page'),
        ),
      ),
    );
  }
}
