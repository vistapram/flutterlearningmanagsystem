import 'package:flutter/material.dart';
import 'package:quizstar/home.dart';
import 'package:quizstar/materi.dart';
import 'package:quizstar/splash.dart';
import 'package:quizstar/ar.dart';

  void main() => runApp(MyApp());
  class MyApp extends StatelessWidget {
    final routes = <String, WidgetBuilder>{
    splash.tag : (context) => splash(),
    materi.tag: (context) => materi(),
    homepage.tag: (context) => homepage(),
    ar.tag: (context) => ar(),
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Perakitan Komputer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: splash(),
      routes: routes,
    );
}
}