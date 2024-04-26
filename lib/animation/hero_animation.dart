import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterfeb/animation/animation.dart';

class HeroAnimation extends StatelessWidget {
  const HeroAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Hero(
        tag: 'myr',
        child: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (_) => Details()));
          },
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
                image: const DecorationImage(
                    image: AssetImage('assets/images/lock.png'))),
          ),
        ),
      ),
    );
  }
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'myr',
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            width: 400,
            height: 400,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/lock.png'))),
          ),
        ),
      ),
    );
  }
}
