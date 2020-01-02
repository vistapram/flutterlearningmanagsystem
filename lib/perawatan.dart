import 'package:flutter/material.dart';
import 'dart:async';


class perawatan extends StatelessWidget {
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
          backgroundImage: AssetImage('images/perawatan.jpeg'),
        ),
      ),
    );
    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Perawatan Hardware dan Software',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Peralatan yang digunakan yaitu obeng, kuas, senter, wadah komponen, tang berujung runcing, vacuum cleaner, anti static, thermal grease, dan semprotan udara. Perawatan untuk hadware seperti mouse sebaiknya diletakan pada tempat yang rata dan tidak terdapat benjolan dsb, ini dimaksudkan agar pointer mouse tidak mergerak secara acak; keyboard menutup keyboard agar tidak terkena debu dan serangga; printer bersihkan dari debu dan lakukan reset yang sudah lama tidak digunakan. Perawatan pada operating system yaitu melakukan scandisk, checking dan updating anti virus, backup data dan file-file yang penting.',
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