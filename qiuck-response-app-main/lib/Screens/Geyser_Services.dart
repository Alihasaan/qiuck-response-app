// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_response_app/Font-Theme_color/helper_ui.dart';
import 'package:quick_response_app/Screens/Home_Screen.dart';

class GeyserServicesScreen extends StatelessWidget {
  const GeyserServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Geyser Services',
          style: mTextStyle16(
              myfontWeight: FontWeight.bold, textColor: Colors.blue),
        ),
        leading: IconButton(
          icon: FaIcon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: (() {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home_Screen(),
                ));
          }),
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
            firstGeyserTab(),
            SizedBox(
              height: 10,
            ),
            secondGeyserTab(),
            SizedBox(
              height: 10,
            ),
            thirdGeyserTab(),
            SizedBox(
              height: 10,
            ),
            FouthGeyserTab(),
            SizedBox(
              height: 10,
            ),
            fifthGeyserTab(),
          ],
        ),
      ),
    );
  }
}

class firstGeyserTab extends StatelessWidget {
  const firstGeyserTab({super.key});

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
              image: AssetImage('assets/img/gass-geyser.jpg'),
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
                Text('Gass Geyser Installation'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1500'),
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

class secondGeyserTab extends StatelessWidget {
  const secondGeyserTab({super.key});

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
              image: AssetImage('assets/img/geyser-services.png'),
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
                Text('Gas Geyser Service'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1500'),
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

class thirdGeyserTab extends StatelessWidget {
  const thirdGeyserTab({super.key});

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
              image: AssetImage('assets/img/geyser-repairing.jpg'),
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
                Text('Geyser Repairing'),
                SizedBox(
                  height: 2,
                ),
                Text('Visit & Inspection charges RS:500'),
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

class FouthGeyserTab extends StatelessWidget {
  const FouthGeyserTab({super.key});

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
              image: AssetImage('assets/img/geyser-dism.jpg'),
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
                Text('Gas Geyser Dismantling'),
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

class fifthGeyserTab extends StatelessWidget {
  const fifthGeyserTab({super.key});

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
              image: AssetImage('assets/img/instant-geyser.jpg'),
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
                Text('Instant Geyser installation'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1200'),
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
