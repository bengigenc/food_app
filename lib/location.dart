import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      
      margin: EdgeInsets.only(top: 50, right: 20,left: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 20,
                  width: 200,
                  color: Colors.transparent,
                  child: Text(
                    "Hi Noha!",
                    style: TextStyle(
                        color: Color(0xff010e16),
                        fontSize: 19.39,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 32, top: 2),
                  
                  child: Row(
                    
                    children: [
                      Container(
                        child: Icon(
                          Icons.location_on_outlined,
                          color: Color(0xff035176), size: 14.54,
                        ),
                      ),
                      Container(
                        height: 14,
                        width: 140,
                        child: Text(
                          "Location, Main City-Napgur ",
                          style: TextStyle(
                              color: Color(0xffB3B3B3), fontSize: 11.63),
                        ),
                      ),
                      Container(
                        height: 15.51,
                        width: 15.51,
                        child: Icon(
                          Icons.keyboard_arrow_down,
                          color: Color(0xff035176),size: 15.51,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        Container(
          height: 36.84,
          width: 31.99,
          child: Image.asset("assets/images/5bildirim.png", fit: BoxFit.cover,)),
        ],
      ),
      
    );
  }
}
