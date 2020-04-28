import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



main() => runApp(
Directionality(
  textDirection: TextDirection.ltr,
  child: Container(
      child: App(),
    ),
  ),
);


class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  Color changeBGcolor = Colors.grey[800];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          setState(() {
//            changeBGcolor =
//                Color(((math.Random().nextDouble() * 0xFFFFF).toInt()))
//                    .withOpacity(1.0);
//          });
            changeBGcolor =
            Colors.primaries[Random().nextInt(Colors.primaries.length)];
          });
        },
        child: Container(
          color: changeBGcolor,
          child: Center(
            child: Text(
              ("Hey there"),
              style: TextStyle(
                color: Colors.white,
                fontSize: 48.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}







