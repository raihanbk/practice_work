import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Names {
  String name;
  int phone;

  Names({required this.name, required this.phone});
}

final List<Map<String, dynamic>> names = [
  {'name': 'Name1', 'phone': 8086139445, 'profile': 'assets/images/lock.png'},
  {'name': 'Name2', 'phone': 9645929445, 'profile': 'assets/images/appicon.png'}
];

class Items1 {
  String title;
  Icon icon;

  Items1({required this.title, required this.icon});
}

final List<Map<String, dynamic>> items1 = [
  {
    'title': 'Add Leads',
    'icon': Icon(
      Icons.edit,
      color: Colors.white,
    ),
  },
  {
    'title': 'Points Redemption',
    'icon': Icon(
      Icons.star,
      color: Colors.white,
    ),
  },
  {
    'title': 'Points',
    'icon': Icon(
      Icons.plus_one,
      color: Colors.white,
    ),
  },
  {
    'title': 'Profile',
    'icon': Icon(
      Icons.person,
      color: Colors.white,
    ),
  },
  {
    'title': 'Dashboard',
    'icon': Icon(
      Icons.dashboard,
      color: Colors.white,
    ),
  },
  {
    'title': 'Home',
    'icon': Icon(
      Icons.home,
      color: Colors.white,
    ),
  },
];

final List<Items1> itemsFirst =
    items1.map((e) => Items1(title: e['title'], icon: e['icon'])).toList();
