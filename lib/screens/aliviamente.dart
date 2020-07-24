import 'package:flutter/material.dart';
import '../models/constants.dart';
import 'splash.dart';

class AliviamenteApp extends StatelessWidget {
  const AliviamenteApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: APP_NAME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
