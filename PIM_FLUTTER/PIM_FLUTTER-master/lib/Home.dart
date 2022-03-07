import 'package:ev/signin.dart';
import 'package:ev/Games.dart';
import 'package:ev/Phome.dart';
import 'package:ev/Basket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/HomePage.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, "/home");
                },
                child: Column(
                  children: [
                    Image.asset('Play-button.png'),
                  ],
                ),
              )))),
    );
  }
}
