import 'package:flutter/material.dart';
import 'package:myapps/loginUI/login.dart';
import 'package:myapps/splash.dart';
import 'package:myapps/ui/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    // LoginKu.tag: (context) => LoginKu(),
    HomeKu.tag: (context) => HomeKu(),
  };

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Myapps',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            visualDensity: VisualDensity.adaptivePlatformDensity,
            fontFamily: 'Poppins'),
        home: Loading());
  }
}
