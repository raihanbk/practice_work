import 'package:flutter/material.dart';

class AnimationEg extends StatefulWidget {
  const AnimationEg({super.key});

  @override
  State<AnimationEg> createState() => _AnimationEgState();
}

class _AnimationEgState extends State<AnimationEg>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late Animation<Offset> animation1;
  late AnimationController animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 3));
    animation =
        Tween<double>(begin: 0.0, end: 2.0).animate(animationController);

    animation1 = Tween<Offset>(begin: Offset(0, 0), end: Offset(1, 1)).animate(animationController);
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SlideTransition(
          position: animation1,
          child: IconButton(
              onPressed: () {
            if(animationController.isDismissed) {
              animationController.forward();
            } else {
              animationController.reverse();
            }
          }, icon: const Icon(Icons.place)),
        ),
      ),
    );
  }
}
