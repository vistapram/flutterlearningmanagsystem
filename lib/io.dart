import 'package:flutter/material.dart';
import 'dart:async';


class inputoutput extends StatelessWidget {
  static String tag = 'home-page';
  
  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 72.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('images/io.jpeg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pencarian dan Penyelesaian Kesalahan I/O',textAlign:TextAlign.center,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Kerusakan pada mouse seperti pointer mouse tidak bergerak biasa ditimbulkan oleh penggunakan CPU berlebihan atau karena mengalami hang pada aplikasi solusinya dengan menunggu beberapa saat; pointer mouse tidak berjalan normal biasanya disebabkan karena ada debu pada mouse pad, solusinya dengan cara membersihkan debu pada mouse pad. Kerusakan pada keyboard yaitu keyboard error solusinya dengan pindah port USB. Kerusakan pada printer yaitu hasil cetakan bergaris atau pudar penyebabnya karena cartridge solusinya dengan head cleansing; kertas pada printer macet karena tumpukan kertas tebal solusinya dengan menaruh kertas sesuai dengan kapasitas printer.',textAlign:TextAlign.justify
,style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}