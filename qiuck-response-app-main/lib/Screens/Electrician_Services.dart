// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_response_app/Font-Theme_color/helper_ui.dart';
import 'package:quick_response_app/Screens/Home_Screen.dart';

class electricianServicesScreen extends StatelessWidget {
  const electricianServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home_Screen(),
                ));
          },
          icon: FaIcon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
        title: Text(
          'Electrical Services',
          style: mTextStyle18(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Text(
                'Order these services',
                style: mTextStyle18(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            firstElectricanTab(),
            SizedBox(
              height: 10,
            ),
            secondElectricianTab(),
            SizedBox(
              height: 10,
            ),
            thirdElectricianTab(),
            SizedBox(
              height: 10,
            ),
            fouthElectricianTab(),
            SizedBox(
              height: 10,
            ),
            fifthElectricianTab(),
          ],
        ),
      ),
    );
  }
}

class firstElectricanTab extends StatelessWidget {
  const firstElectricanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      margin: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/led-inst.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('LED TV or LCD Mounting'),
                SizedBox(
                  height: 1,
                ),
                Text('32-42 Inch'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:800'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          )
        ],
      ),
    );
 
  }
}

class secondElectricianTab extends StatelessWidget {
  const secondElectricianTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      margin: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/electrical-switch.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Switchboard Button Replacement'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:200'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  
  }
}

class thirdElectricianTab extends StatelessWidget {
  const thirdElectricianTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      margin: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/fan-demer.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Fan Dimmer Switch Installation'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:300'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class fouthElectricianTab extends StatelessWidget {
  const fouthElectricianTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      margin: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/smd-light.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 110,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("SMD Lights Installation"),
                SizedBox(
                  height: 1,
                ),
                Text('(per Light)'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:300'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class fifthElectricianTab extends StatelessWidget {
  const fifthElectricianTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 400,
      margin: EdgeInsets.only(left: 6),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/switch-replace.png'),
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Switchboard Socket Replacement"),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:250'),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Order'),
                  style: ElevatedButton.styleFrom(shape: StadiumBorder()),
                ),
              ],
            ),
          )
        ],
      ),
    );
    ;
  }
}
