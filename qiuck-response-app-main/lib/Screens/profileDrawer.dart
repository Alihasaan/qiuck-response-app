// ignore_for_file: prefer_const_constructors

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quick_response_app/Font-Theme_color/helper_ui.dart';
import 'package:quick_response_app/Screens/Auth_Screens/Login_Screen.dart';
import 'package:quick_response_app/Screens/Home_Screen.dart';
import 'package:quick_response_app/Model/userModel.dart';

class profileDrawer extends StatefulWidget {
  const profileDrawer({super.key});

  @override
  State<profileDrawer> createState() => _profileDrawerState();
}

class _profileDrawerState extends State<profileDrawer> {
  User? user = FirebaseAuth.instance.currentUser;
  UserModel loginUserModel = UserModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get()
        .then((value) {
      loginUserModel = UserModel.fromMap(value.data());
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (() {
            Navigator.of(context).pop();
          }),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.blue,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.money))],
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Profile',
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(
                height: 120,
                width: 120,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10000),
                    child: Image(image: AssetImage('assets/img/default.png'))),
              ),
              SizedBox(
                height: 10,
              ),
              Text('${loginUserModel.firstName} ${loginUserModel.secondName}'),
              Text('${loginUserModel.email}'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Edit Profile"),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightBlueAccent,
                      side: BorderSide.none,
                      shape: StadiumBorder()),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: Card(
                  child: Column(
                    children: [
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.withOpacity(0.1)),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.grey[100],
                              child: Image(
                                  image: AssetImage(
                                      'assets/img/icons/profile.png')),
                            ),
                          ),
                          title: Text(
                            'Account',
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)),
                            child: FaIcon(Icons.arrow_forward_ios),
                          )),
                      Divider(),
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.withOpacity(0.1)),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.grey[100],
                              child: Image(
                                  image:
                                      AssetImage('assets/img/icons/about.png')),
                            ),
                          ),
                          title: Text(
                            'About',
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)),
                            child: FaIcon(Icons.arrow_forward_ios),
                          )),
                      Divider(),
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: Colors.grey.withOpacity(0.1)),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.grey[100],
                              child: Image(
                                  image: AssetImage(
                                      'assets/img/icons/location.png')),
                            ),
                          ),
                          title: Text(
                            'Location',
                          ),
                          trailing: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.withOpacity(0.1)),
                            child: FaIcon(Icons.arrow_forward_ios),
                          )),
                      Divider(),
                      InkWell(
                        onTap: (){
                          logOut(context);
                        },
                        child: ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.grey.withOpacity(0.1)),
                              child: Container(
                                height: 25,
                                width: 25,
                                color: Colors.grey[100],
                                child: Image(
                                    image: AssetImage(
                                        'assets/img/icons/logout.png')),
                              ),
                            ),
                            // ignore: prefer_const_constructors
                            title: Text(
                              'Logout',
                            ),
                            trailing: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.grey.withOpacity(0.1)),
                              child: FaIcon(Icons.arrow_forward_ios),
                            )),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );

   
  }


 Future <void> logOut(BuildContext context)async{
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
 } 
}
