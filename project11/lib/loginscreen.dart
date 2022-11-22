// import 'dart:ui';
// import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homescreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _firebaseauth = FirebaseAuth.instance;

  registerSubmit() async {
    try {
      await _firebaseauth.createUserWithEmailAndPassword(
          email: _emailController.text.toString().trim(),
          password: _passwordController.text);
    } catch (e) {
      print(e);
      SnackBar(
        content: Text(e.toString()),
      );
    }
  }

  loginSubmit() async {
    try {
      _firebaseauth
          .signInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .then((value) => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen())));
    } catch (e) {
      print(e);
      SnackBar(content: Text(e.toString()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(children: <Widget>[
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 40),
                child: Text(
                  "Praktik",
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 30),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8),
                child: FlutterLogo(
                  size: 200,
                ),
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _emailController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "email"),
                  )),
              Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), labelText: "password"),
                  )),
              TextButton(onPressed: () {}, child: Text("Forgot password")),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text("Register"),
                  onPressed: () {
                    registerSubmit();
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 50,
                padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  style: raisedButtonStyle,
                  child: Text("Login"),
                  onPressed: () {
                    loginSubmit();
                  },
                ),
              )
            ])));
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.grey[300],
    primary: Colors.blue,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(6)),
    ));
