import 'package:flutter/material.dart';
import 'package:flutterfeb/state%20management/Provider/controller/count_controller.dart';
import 'package:flutterfeb/state%20management/Provider/controller/theme_controller.dart';
import 'package:provider/provider.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Provider.of<ThemeController>(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                  controller.changeTheme();
              },
              icon: controller.isDark
                  ? Icon(Icons.dark_mode)
                  : Icon(Icons.light_mode))
        ],
      ),
      body: Consumer(
        builder: (BuildContext context, value, Widget? child) {
          final controller = Provider.of<CounterProvider>(context);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Hi, this is a Simple Counter'),
              Text(
                controller.counter.count.toString(),
                style: const TextStyle(fontSize: 25),
              ),
              MaterialButton(
                onPressed: () {
                  controller.incrementCounter();
                },
                color: Colors.lightGreen,
                child: const Text('Add'),
              )
            ],
          );
        },
      ),
    );
  }
}
