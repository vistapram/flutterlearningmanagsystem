import 'package:flutter/material.dart';
import 'dart:async';


class Periperal extends StatelessWidget {
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
          backgroundImage: AssetImage('images/periperal.jpeg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Jenis-Jenis Peripheral',textAlign:TextAlign.center,
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Peripheral computer merupakan bagian dari komponen computer yang terhubung dengan CPU yang dimana memiliki fungsi sebagai perangkat input dan ouput data yang keluar dan masuk CPU yang selanjutnya akan diproses oleh system computer untuk mengolah data input dan dilekuluarkan oleh output peripheral yang dimana contoh dari peripheral output adalah keyboard, mouse, scanner, recoding device, dan Web cam dan contoh dari nperiperal output adalah monitor yang dimana menghasilkan sebuah dokumen video gambar maupun audio. Peripheral memilik 3 kategori yakni: Hardware,Software, Brainware.',textAlign:TextAlign.justify,
        style: TextStyle(fontSize: 16.0, color: Colors.white),
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