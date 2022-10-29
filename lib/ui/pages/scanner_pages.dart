import 'package:codigo_2qr_sqlite/ui/general/colors.dart';
import 'package:codigo_2qr_sqlite/ui/pages/register_pages.dart';
import 'package:flutter/material.dart';

class ScannerPages extends StatelessWidget {
  const ScannerPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     floatingActionButton: FloatingActionButton(
     onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
     },
     backgroundColor: kBrandPrimaryColor,
     child: Icon(Icons.camera_alt),
     ),

     body: Container(
      margin: EdgeInsets.only(top: 200,left: 30,right: 30),
      child:Image(image:  NetworkImage('https://play-lh.googleusercontent.com/I4zx3YEvgmSho0SmxBRNILwqb3No4ZOYVbm-uun2iIlZ5KeP3n_t-RaqW0pzkL_flw')),
     ),
    );
  }
}