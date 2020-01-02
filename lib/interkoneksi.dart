import 'package:flutter/material.dart';
import 'dart:async';


class interkoneksi extends StatelessWidget {
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
          backgroundImage: AssetImage('images/interkoneksi.jpeg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Interkoneksi Antar Komputer',textAlign:TextAlign.center,
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Interkoneksi adalah system koneksi/ hubungan antar computer satu dengan computer lainnya. Inter koneksi dibagi menjadi dua yakni : Interkoneksi point to point  , Interkoneksi point to multi point .Peralatan utama yang digunakan utuk melakukan interkoneksi antar computer antar lain kabel utp, NIC, switch, wireless access point. Pengertian wireless access point : Access point adalah sebuah perangkat jaringan yang berisi sebuah transiver dan Athena untuk transmisi dan menerima sinyal',textAlign:TextAlign.justify
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