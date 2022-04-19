import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../components/navbar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    Future.delayed(Duration(seconds: 4)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Navbar()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white10,
        child: Center(
          child: Container(
            width: 150,
            height: 150,
            child: Image.asset("../../assets/images/home-illustration.png"),
          ),
        ));
  }
}
