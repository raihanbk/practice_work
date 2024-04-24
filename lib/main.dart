import 'package:flutter/material.dart';
import 'package:flutterfeb/passing_data_bw_screens/ui/shoe_home.dart';
import 'package:flutterfeb/screens/atm/atm_view.dart';
import 'package:flutterfeb/screens/bottom_sheet.dart';
import 'package:flutterfeb/screens/drawer.dart';
import 'package:flutterfeb/screens/floating_appbar.dart';
import 'package:flutterfeb/screens/gridview/gridView1.dart';
import 'package:flutterfeb/screens/gridview/gridview3.dart';
import 'package:flutterfeb/screens/gridview/gridview5.dart';
import 'package:flutterfeb/screens/gridview/staggered_grid_view.dart';
import 'package:flutterfeb/screens/home_page.dart';
import 'package:flutterfeb/screens/listview/listview_builder.dart';
import 'package:flutterfeb/screens/listview/listview_custom.dart';
import 'package:flutterfeb/screens/signup_page.dart';
import 'package:flutterfeb/screens/slider.dart';
import 'package:flutterfeb/screens/splash_screen.dart';
import 'package:flutterfeb/shoe_store/mm.dart';
import 'package:flutterfeb/shoe_store/shoe_store.dart';
import 'package:flutterfeb/tourism_app_1/ui/tourism_home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(splashColor: Colors.transparent),
      debugShowCheckedModeBanner: false,
      home: const TourismHome(),
    );
  }
}

/// main()- to run a program main function is mandatory
/// runApp()- attach widget tree to the screen (widget to pixel)
/// build - to create widget tree , must return a widget
/// BuildContext - used to locate each widget and its position in a widget tree
