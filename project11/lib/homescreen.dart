import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project11/location.dart';
import 'package:project11/loginscreen.dart';
import 'package:project11/profile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<void> _signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    if (auth.currentUser != null) {
      print(auth.currentUser!.email);
    }
    return Scaffold(
      appBar: AppBar(
      
      ),
      drawer: profile(),
      body: Padding(
        padding: EdgeInsets.all(30.0) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          SizedBox(height: 60),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
              IconButton(icon: Icon(Icons.extension), onPressed: () {}),
            ],
          ),
          SizedBox(height: 37,),
          Text.rich(
            TextSpan(
              children: <TextSpan>[
                TextSpan(
                  text: "Selamat Datang, \n",
                  style: TextStyle(color: Colors.blue[300]),
                ),
                TextSpan(
                  text: auth.currentUser!.email,
                  style: TextStyle(color: Colors.blue[900]),
                ),
              ],
            ),
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, size: 18),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10)),
          hintText: "Search" ),
          ),
          SizedBox(height: 10,),
          Text(
            "Recomended Place",
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                _signOut().then((value) => Navigator.of(context)
                        .pushReplacement(MaterialPageRoute(
                          builder: (context) => LoginScreen())));
              },
              
              child: Text('Logout'),
            )),
            Lokasi()
          ],
        ),
      ),
    );
  }
}
final countries = ["Tokyo", "Berlin", "Roma", "Monas"];
