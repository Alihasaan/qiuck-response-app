import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formkey = GlobalKey<FormState>();
  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  Widget emailTextField() {
    return TextFormField(
      controller: emailTextController,
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
        emailTextController.text = value!;
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

  Widget passwordTextField() {
    return TextFormField(
      controller: passwordTextController,
      textInputAction: TextInputAction.done,
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
        passwordTextController.text = value!;
      },
    );
  }

  Widget loginButton() {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      color: Colors.blue,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {},
        child: Text(
          'Login',
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Form(
                  key: _formkey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 200,
                        child: Image.asset('assets/img/qrs-logo.png'),
                      ),
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
                      loginButton(),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't hava an account?"),
                          TextButton(onPressed: () {}, child: Text('signUp')),
                        ],
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
