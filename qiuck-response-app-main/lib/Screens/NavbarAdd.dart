// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_response_app/Screens/Home_Screen.dart';
import 'package:quick_response_app/Screens/Profile_Screen.dart';
import 'package:quick_response_app/Screens/order_Screen.dart';

class HomeNavBarItems extends StatefulWidget {
  const HomeNavBarItems({super.key});

  @override
  State<HomeNavBarItems> createState() => _HomeNavBarItemsState();
}

List Pages = [
  Home_Screen(),
  Order_Screen(),
  Profile_Details(),
];

class _HomeNavBarItemsState extends State<HomeNavBarItems> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: FaIcon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          BottomNavigationBarItem(
              icon: FaIcon(Icons.file_copy),
              label: 'Order',
              tooltip: 'Order details'),
          BottomNavigationBarItem(
              icon: FaIcon(Icons.person),
              label: 'Profile',
              tooltip: 'person profile details'),
        ],
        onTap: (Index) {
          setState(() {
            _currentIndex = Index;
          });
        },
      ),
    );
  }
}
