import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}
//f
class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Container(
     
      margin: EdgeInsets.only(right: 10,left:10,top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 40.72,
            width: 290.55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.82),
                border: Border.all(width: 1, color: Color(0xffFFFFFF))),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Align(
                  widthFactor: 1,
                  heightFactor: 1,
                  child: Icon(Icons.search, color: Color(0xff333333)),
                ),
                border: OutlineInputBorder(),
                hintText: "Search Your food or Restaurant",
                hintStyle: TextStyle(color: Color(0xFFCFCFCF), fontSize: 11.63),
              ),
            ),
          ),
          Container(
           
            height: 50.72,
            width: 64.29,
            child: Image.asset("assets/images/search.png"),
            
          )
        ],
      ),
    );
  }
}
