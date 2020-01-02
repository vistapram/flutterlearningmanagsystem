import 'package:flutter/material.dart';
import 'dart:async';


class kesalahan extends StatelessWidget {
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
          backgroundImage: AssetImage('images/kesalahan.jpeg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Pencarian Kesalahan Dasar Dalam Komputer',textAlign:TextAlign.center,
        style: TextStyle(fontSize: 20.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Troubleshooting merupakan suatu masalah atau ketidak normalan pada computer. Terdapat 2 jenis troubleshooting yaitu : Troubleshooting hardware dan Troubleshooting software. Troubleshooting hardware biasanya ditandai dengan computer tidak dapat menyala, monitor mati, dan lain sebagainya. Sedangkan Troubleshooting software merupakan suatu permasalahan yang dimana terjadi pada perangkat lunak yang dimana hal ini dapat ditandai dengan melambatnya kineja computer. Contoh troubleshooting. Monitor menjadi gelap pada saat loading. Cara mengatasi : Dengan cara menginstal ulang driver VGA. Monitor berkedip disaat digunakan, cara mengatasi: masuk kedalam display property, tekan tab setting dan klik advance,kemudian klik adapter, pada bagian ini ditampilkan refresh rate sesuaikan dengan pengguna computer',textAlign:TextAlign.justify,
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