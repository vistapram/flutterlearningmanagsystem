import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';


class ar extends StatefulWidget {
  static String tag = 'ar-page';

  @override
    _arState createState() => _arState();
}

    class _arState extends State<ar>{
      @override
      void initState(){

      }
  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: _onWillPop,
      child: new Scaffold(
      appBar: AppBar(
        title: Text("Augmented Reality"),
        elevation: .1,
        backgroundColor: Colors.blue,
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