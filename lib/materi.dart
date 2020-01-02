import 'package:flutter/material.dart';
import 'package:quizstar/io.dart';
import 'package:quizstar/periperal.dart';
import 'package:quizstar/io.dart';
import 'package:quizstar/kesalahan.dart';
import 'package:quizstar/interkoneksi.dart';
import 'package:quizstar/perawatan.dart';
import 'package:intl/intl.dart';
import 'dart:async';


class materi extends StatefulWidget {
  static String tag = 'materi-page';

  @override
    _MateriState createState() => _MateriState();
}

    class _MateriState extends State<materi>{
      @override
      void initState(){

      }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(
      appBar: AppBar(
        title: Text("Materi"),
        elevation: .1,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2, //atur jumlah button per baris
          padding: EdgeInsets.all(3.0),
          children: <Widget>[ //buat menu utama halaman depan
            createMenuButton("Jenis-Jenis Peripheral", "images/periperal.jpeg",Periperal()),
            createMenuButton("Pencarian Kesalahan Dasar Pada Komputer", "images/kesalahan.jpeg",kesalahan()),
            createMenuButton("Pencarian & Penyelesaian Kesalahan I/O", "images/io.jpeg",inputoutput()),
            createMenuButton("Interkoneksi Antar Komputer", "images/interkoneksi.jpeg",interkoneksi()),
            createMenuButton("Perawatan Hardware dan Software", "images/perawatan.jpeg",perawatan()),
          ],
        ),
      ),
    )
    );
  }
  
  Future<bool> _onWillPop() {
    return showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Apakah kamu yakin ingin keluar aplikasi?'),
        actions: <Widget>[
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('Tidak'),
          ),
          new FlatButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Iya'),
          ),
        ],
      ),
    ) ?? false;
  }


  Card createMenuButton(String title, String imageData,Widget onClick) { //fungsi buat menu
    return Card(
        margin: new EdgeInsets.all(10.0),
        elevation: 2.0,
        child: Container(
          child: new InkWell(
            child: new RaisedButton(
                child : Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Center(child: Image.asset(imageData,width: 100,height: 100,),),
                    new Center(child: new Text(title,textAlign: TextAlign.center,style:new TextStyle(fontSize: 14.0, color: Colors.black87)),),
                  ],
                ),
                onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context) => onClick));},
              ),
          ),
        ));
  }

}