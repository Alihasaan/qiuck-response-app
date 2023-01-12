// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:quick_response_app/Font-Theme_color/helper_ui.dart';
import 'package:quick_response_app/Screens/Electrician_Services.dart';
import 'package:quick_response_app/Screens/Geyser_Services.dart';
import 'package:quick_response_app/Screens/Home_Services.dart';
import 'package:quick_response_app/Screens/Profile_Screen.dart';
import 'package:quick_response_app/Screens/order_Screen.dart';
import 'package:quick_response_app/Screens/profileDrawer.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Ac_Services.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

int _currentIndex = 0;
List Pages = [
  Home_Screen(),
  Order_Screen(),
  Profile_Details(),
];

class _Home_ScreenState extends State<Home_Screen> {
  int _currentIndexCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'HomeScreen',
          style: mTextStyle18(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      drawer: profileDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            imageSlider(),
            SizedBox(
              height: 20,
            ),
            Text(
              'All Services',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            servicesTab(),
          ],
        ),
      ),
    );
  }
}

class imageSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 0.8),
              child: Container(
                height: 150,
                width: 350,
                child: Image(
                  image: AssetImage('assets/img/dismantling.jpg'),
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(40)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 0.8),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage('assets/img/led-inst.jpg'),
                  fit: BoxFit.cover,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class servicesTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        servicesTabFirstRowItems(),
        SizedBox(
          height: 20,
        ),
        servicesTabSecondRowItems(),
      ],
    );
  }
}

class servicesTabFirstRowItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Container(
            width: 160,
            height: 140,
            child: InkWell(
              onTap: (() {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AcServicesScreen(),
                    ));
              }),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/img/ac.png')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Ac Services',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          ),
        ),
        Card(
          child: Container(
            width: 160,
            height: 140,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GeyserServicesScreen(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/img/geyser.png')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Geyser Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          ),
        ),
      ],
    );
  }
}

class servicesTabSecondRowItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Card(
          child: Container(
            width: 160,
            height: 140,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => electricianServicesScreen(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/img/electric.png')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Electric Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          ),
        ),
        Card(
          child: Container(
            width: 160,
            height: 140,
            child: InkWell(
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => homeServicesScreen(),
                    ));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: Image(image: AssetImage('assets/img/home-s.png')),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Home Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
          ),
        ),
      ],
    );
  }
}
