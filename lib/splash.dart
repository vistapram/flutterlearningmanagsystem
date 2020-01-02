import 'package:flutter/material.dart'; 
import 'package:quizstar/home.dart';
import 'package:quizstar/materi.dart';
import 'package:quizstar/ar.dart';

 class splash extends StatefulWidget {
static String tag = 'splash-page';

  @override
  State<StatefulWidget> createState() {
    return new _SplashState();
      }
    }
    
    class _SplashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('images/logo.jpg'),
      ),
    );
     final teks = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'MOBILE LEARNING PERAKITAN KOMPUTER',textAlign:TextAlign.center,
style: TextStyle(fontSize: 16.0, color: Colors.lightBlueAccent.shade100),
      ),
    );
     final buttons = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(materi.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Materi', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
     final buttonss = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(homepage.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Quiz', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
     final buttonsss = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
            Navigator.of(context).pushNamed(ar.tag);
          },
          color: Colors.lightBlueAccent,
          child: Text('Augmented Reality', style: TextStyle(color: Colors.white)),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            teks,
            buttons,buttonss,buttonsss

          ],
        ),
      ),
    );
  }
}