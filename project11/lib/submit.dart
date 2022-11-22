// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'loginscreen.dart';


// void submit(BuildContext context, String email, String password) {
//     if (email.isEmpty || password.isEmpty) {
//       final snackBar = SnackBar(
//         duration: const Duration(seconds: 5),
//         content: Text("Email dan password harus diisi"),
//         backgroundColor: Colors.red,
//       );

//       ScaffoldMessenger.of(context).showSnackBar(snackBar);
//       return;
//     }

//     AlertDialog alert = AlertDialog(
//       title: Text("Login Berhasil"),
//       content: Container(
//         child: Text("Selamat Anda Berhasil login"),
//       ),
//       actions: [
//         TextButton(
//           child: Text('Ok'),
//           onPressed: () => Navigator.of(context).pop(),
//         ),
//       ],
//     );

//     showDialog(context: context, builder: (context) => alert);
//     return;
//   }
