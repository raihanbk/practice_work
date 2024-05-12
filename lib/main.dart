import 'package:flutter/material.dart';
import 'package:flutterfeb/state%20management/Provider/controller/count_controller.dart';
import 'package:flutterfeb/state%20management/Provider/controller/theme_controller.dart';
import 'package:flutterfeb/state%20management/Provider/view/counter_home.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ThemeController>(context).isDark
            ? ThemeData.dark()
            : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: MultiProvider(
            providers: [
              ChangeNotifierProvider(
                create: (context) => CounterProvider(),
              ),
              ChangeNotifierProvider(
                create: (context) => ThemeController(),
              ),
            ],
            child: const CounterHome()),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree
