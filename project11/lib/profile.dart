import 'package:flutter/material.dart';
import 'package:project11/homescreen.dart';
import 'package:project11/loginscreen.dart';

class profile extends StatefulWidget {
  @override
  _profilestate createState() => _profilestate();
}

class _profilestate extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(
      //   child: Column(
      //     children: <Widget>[
      //       ListTile(
      //         leading: Icon(Icons.alarm),
      //         title: Text("Aplication"),
      //         onTap: () {
      //           // Change the applications state
      //           print("Change page");
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.ac_unit),
      //         title: Text("Notifications"),
      //         onTap: () {
      //           // Change the applications state
      //           print("Change page");
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.directions_bike),
      //         title: Text("Whistlist"),
      //         onTap: () {
      //           // Change the applications state
      //           print("SIlahkan Pindah Halaman");
      //           Navigator.pop(context);
      //         },
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.chrome_reader_mode),
      //         title: Text("setting"),
      //         onTap: () {
      //           // Change the applications state
      //           print("Silahkan Pindah Halaman");
      //           Navigator.pop(context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: Container(
        child: Center(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('img/2.jpeg'),
              radius: 60.0,
            ),
            
            Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.person
              ),
                title: Text('Alvin jentara adi'),
              )
            ),
              Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.phone
              ),
                title: Text('+62-8236473772'),
              )
            ),
                        Container(
            padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.home
              ),
                title: Text('perumahan Griya Mangli Indah'),
              )
            ),
          ]
        ),
      ),
      ),
    );
  }
}
