// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:quick_response_app/Screens/Auth_Screens/Login_Screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

TextEditingController firstNameController = TextEditingController();
TextEditingController secondNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController confirmPasswordController = TextEditingController();

class _RegistrationScreenState extends State<RegistrationScreen> {
  Widget firstTextField() {
    return TextFormField(
      controller: firstNameController,
      keyboardType: TextInputType.emailAddress,
      validator: ((value) {
        if (value!.isEmpty) {
          return 'firstName is required';
        }
        RegExp regex = new RegExp(r'^.{3,}$');
        if (!regex.hasMatch(value)) {
          return ("Enter firstName Value(Min. 3 Character)");
        }
      }),
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'First Name',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget secondTextField() {
    return TextFormField(
      controller: secondNameController,
      keyboardType: TextInputType.emailAddress,
      validator: ((value) {
        if (value!.isEmpty) {
          return 'secondName is required';
        }
      }),
      onSaved: (value) {
        secondNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Second Name',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget passwordTextField() {
    return TextFormField(
      controller: passwordController,
      textInputAction: TextInputAction.next,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return 'Password is required';
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
      },
      onSaved: (value) {
        passwordController.text = value!;
      },
    );
  }

  Widget confirmPasswordTextField() {
    return TextFormField(
      controller: confirmPasswordController,
      textInputAction: TextInputAction.done,
      obscureText: true,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.vpn_key),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Confirm Password',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        RegExp regex = new RegExp(r'^.{6,}$');
        if (value!.isEmpty) {
          return 'confirmPassword is required';
        }
        if (!regex.hasMatch(value)) {
          return ("Enter Valid Password(Min. 6 Character)");
        }
        if (confirmPasswordController.text != passwordController.text) {
          return 'Password does not Match recheck again';
        }
      },
      onSaved: (value) {
        confirmPasswordController.text = value!;
      },
    );
  }

  Widget emailTextField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: ((value) {
        if (value!.isEmpty) {
          return 'Email is required';
        }
        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)) {
          return ("Please Enter a valid email");
        }
        return null;
      }),
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: 'Email',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
    );
  }

  Widget signUpButton() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          'SignUp',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.blue,
            )),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Form(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 200,
                    child: Image.asset('assets/img/qrs-logo.png'),
                  ),
                  firstTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  secondTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  emailTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  passwordTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  confirmPasswordTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  signUpButton()
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
