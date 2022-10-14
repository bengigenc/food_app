import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key, required this.restImage,required this.restName,required this.restPoint, required this.restTime, required this.restKm});
  final String restImage;
  final String restName;
  final String restPoint;
  final String restTime;
  final String restKm;

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left:10, right: 10, top: 10 ),
      height: 96.95,
      width: 359.69,
      decoration: BoxDecoration(color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(15),border: Border.all(width: 0.1, color: Colors.grey), boxShadow: [BoxShadow(blurRadius: 10, offset: Offset(0, 0), color: Colors.grey.shade300)],),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.restImage),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(15)),
            height: 96.95,
            width: 96.95,
          ),
          Container(
         
          width: 170,
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  
                  child: Text(
                    widget.restName,
                    style: TextStyle(fontSize: 13.57, color: Color(0xff010E16)),
                  ),
                ),
                Container(
                  width: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xffFFD600),
                        size: 19.39,
                      ),
                      Text(
                        widget.restPoint,
                        style: TextStyle(
                            color: Color(0xffB3B3B3), fontSize: 13.57),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1),
                  width: 140,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.watch_later_outlined,
                        size: 15.51,
                        color: Color(0xff9B9B9B),
                      ),
                      Text(
                        widget.restTime,
                        style: TextStyle(
                            color: Color(0xffB3B3B3), fontSize: 13.57),
                      ),
                      Icon(
                        Icons.circle,
                        size: 5,
                        color: Color(0xffD9D9D9),
                      ),
                      Text(
                        widget.restKm,
                        style: TextStyle(
                            color: Color(0xffB3B3B3), fontSize: 13.57),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(

                alignment: Alignment.center,
                height: 30.06,
                width: 54.29,
                child: Text(
                  "New",
                  style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13.57),
                ),
                decoration: BoxDecoration(
                    color: Color(0xff010E16),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
