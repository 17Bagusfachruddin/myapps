import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myapps/loginUI/login.dart';
import 'package:myapps/ui/home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateRoute: HomeKu(),
        duration: 4000,
        imageSize: 100,
        imageSrc: "assets/images/satu.png",
      ),
    );
  }
}
