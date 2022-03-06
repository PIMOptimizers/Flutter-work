import 'package:ev/signin.dart';
import 'package:ev/Games.dart';
import 'package:ev/Phome.dart';
import 'package:ev/Basket.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  _GamesState createState() => _GamesState();
}


class _GamesState extends State<Games> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }
  static const darkBlue = const Color(0xff0E2433);
  late int _currentIndex;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/Games-back.png"),
                fit: BoxFit.cover,
              ),
            ),
            child:Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                          width: 110,
                      ),
                      GestureDetector(
                        onTap: (){
                          _currentIndex = 0;
                        },
                        child:Image.asset("assets/target.png"),
                      ),
                      GestureDetector(
                        onTap: (){
                          _currentIndex = 1;
                        },
                        child:Image.asset("assets/tictactoe.png"), 
                      ),
                      GestureDetector(
                        onTap: (){
                          _currentIndex = 2;
                        },
                        child:Image.asset("assets/Dino.png") ,
                      )
                      
                      
                      
                    ],
                  ),
                  
                ],
              ),
            )
          ),
        )
      ),
    );
  }
}
