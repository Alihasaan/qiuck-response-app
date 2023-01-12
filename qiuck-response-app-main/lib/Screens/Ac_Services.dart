import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_response_app/Font-Theme_color/helper_ui.dart';
import 'package:quick_response_app/Screens/Home_Screen.dart';

class AcServicesScreen extends StatelessWidget {
  const AcServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'AC Services',
          style: mTextStyle16(
              myfontWeight: FontWeight.bold, textColor: Colors.blue),
        ),
        leading: IconButton(
          icon: FaIcon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Home_Screen(),
                ));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Text(
                'Order these Services',
                style: mTextStyle18(),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            firstServicesTab(),
            SizedBox(
              height: 10,
            ),
            secondServicesTab(),
            SizedBox(
              height: 10,
            ),
            thirdServicesTab(),
            SizedBox(
              height: 10,
            ),
            fouthServicesTab()
          ],
        ),
      ),
    );
  }
}

class firstServicesTab extends StatelessWidget {
  const firstServicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/ac-install.jpg'),
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
                Text('Ac Installation'),
                SizedBox(
                  height: 2,
                ),
                Text('Charges Rs:1800'),
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
      margin: EdgeInsets.only(left: 6),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/ac-services.jpg'),
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
                Text('Ac Services'),
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

class thirdServicesTab extends StatelessWidget {
  const thirdServicesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 6),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/ac-rep.jpg'),
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
                Text('Ac Repairing'),
                SizedBox(
                  height: 2,
                ),
                Text('Starting from Rs:1000'),
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
      margin: EdgeInsets.only(left: 6),
      height: 150,
      width: 400,
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.black),
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        children: [
          Container(
            width: 170,
            height: 110,
            margin: EdgeInsets.only(left: 7),
            child: Image(
              image: AssetImage('assets/img/ac-dism.jpg'),
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
                Text('Ac Dismantling'),
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
