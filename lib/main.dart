import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:projeto_baba/screens/home_page.dart';

void main() => runApp(
      new MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.yellow,
          accentColor: Colors.yellow,
          textTheme: TextTheme(body1: TextStyle(color: Colors.yellow[100])),
        ),
        home:
            /*Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("Image/bgsalmao.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: */
            Scaffold(
          backgroundColor: Colors.grey[900],
          body: SplashScreen(),
        ),
      ),
    );

//SPLASH SCREEN
class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 5), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('Image/baby.jpeg'), fit: BoxFit.cover),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(0, 0, 0, 150),
        child: SpinKitWave(
          color: Colors.red,
          size: 35,
        ),
      ),
    );
  }
}
