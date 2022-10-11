import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/buton.dart';

class food1 extends StatefulWidget {
  const food1({super.key});

  @override
  State<food1> createState() => _food1State();
}

class _food1State extends State<food1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF010E16),
      body: Column(
        children: [
          Container(
            width: 414.96,
            height: 382.35,
            child: Image.asset("assets/images/foodapp1.png"),
          ),
          Container(
            
            width: 300,
            margin: EdgeInsets.only(right: 40, top: 20, bottom: 50),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit.  ",
              style: TextStyle(color: Color(0xFFF5F5F5), fontSize: 38.78),
            ),
          ),
        buton1(),
          Container(
            margin: EdgeInsets.only(top: 30),
            child: Text("Don’t have an account? ", style: TextStyle(color: Color(0xFF375268), fontSize: 14.54),),
          ),
          Container(
            child: Text("Create account", style: TextStyle(color: Color(0xFFD9D9D9), fontSize: 14.54),),
          )
        ],
      ),
    );
  }
}
