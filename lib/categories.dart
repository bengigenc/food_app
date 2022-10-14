import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.resimurl, required this.text});
  final String resimurl;
  final String text;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only( left: 10, ),
      alignment: Alignment.topLeft,
      child: Column(
        children: [
          Container(
            height: 67.87,
            width: 67.87,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(widget.resimurl), fit: BoxFit.cover),
                color: Color(0xFFD9D9D9),
                borderRadius: BorderRadius.circular(400)),
          ),
          Container(
            child: Text(
              widget.text,
              style: TextStyle(color: Color(0xff010E16), fontSize: 11.63),
            ),
          )
        ],
      ),
    );
  }
}
/*Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 100, right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text(
                    "Categories",
                    style: TextStyle(color: Color(0xff010E16), fontSize: 17.45),
                  ),
                ),
                Container(
                  child: Text(
                    "Show all",
                    style: TextStyle(color: Color(0xff459FCA), fontSize: 11.63),
                  ),
                )
              ],
            ),
          ),],),*/