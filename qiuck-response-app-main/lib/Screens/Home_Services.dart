import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../Font-Theme_color/helper_ui.dart';
import 'Home_Screen.dart';

class homeServicesScreen extends StatelessWidget {
  const homeServicesScreen({super.key});

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
          'Home Appliance Services',
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
            firstServiceTab(),
            SizedBox(
              height: 10,
            ),
            secondServicesTab(),
            SizedBox(
              height: 10,
            ),
            thirdServiceTab(),
            SizedBox(
              height: 10,
            ),
            fouthServicesTab(),
            SizedBox(
              height: 10,
            ),
            fifthServicesTab(),
          ],
        ),
      ),
    );
  }
}

class firstServiceTab extends StatelessWidget {
  const firstServiceTab({super.key});

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
              image: AssetImage('assets/img/mantual-mechine.jpg'),
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
                Text('Manual Washing machine'),
                SizedBox(
                  height: 1,
                ),
                Text('Installation'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1000'),
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

class secondServicesTab extends StatelessWidget {
  const secondServicesTab({super.key});

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
              image: AssetImage('assets/img/automatic-m-inst.png'),
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
                Text('Automatic Washing machine'),
                SizedBox(
                  height: 1,
                ),
                Text('Installation'),
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

class thirdServiceTab extends StatelessWidget {
  const thirdServiceTab({super.key});

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
              image: AssetImage('assets/img/ups.jpg'),
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
                Text('UPS installation (Without Wiring)'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1000'),
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

class fouthServicesTab extends StatelessWidget {
  const fouthServicesTab({super.key});

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
              image: AssetImage('assets/img/wire-cabel.jpg'),
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
                Text('UPS Wiring (per Wire)'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:270'),
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

class fifthServicesTab extends StatelessWidget {
  const fifthServicesTab({super.key});

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
              image: AssetImage('assets/img/rep-mechine.png'),
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
                Text('Automatic Washing Machine'),
                SizedBox(
                  height: 1.5,
                ),
                Text('Repairing'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1000'),
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
