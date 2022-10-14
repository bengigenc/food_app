import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/categories.dart';
import 'package:food_app/location.dart';
import 'package:food_app/promo.dart';
import 'package:food_app/search.dart';

class food2 extends StatefulWidget {
  const food2({super.key});

  @override
  State<food2> createState() => _food2State();
}
class _food2State extends State<food2> {
 List<Map<String, String>> categori =[
  {"text":"Pizza","resimurl":"assets/images/categories1.png"},
  {"text":"Pan-cake","resimurl":"assets/images/categories2.jpg"},
  {"text":"Sandwich","resimurl":"assets/images/categories3.jpg"},
  {"text":"Ice-cream","resimurl":"assets/images/categories4.jpg"},
  {"text":"Noodle","resimurl":"assets/images/categories5.jpg"}
 ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: Container(
        child: Column(
          children: [
            location(),
            search(),
            Promo(),
            Container(
              margin: EdgeInsets.only(top: 10, right: 10,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text("Categories",style: TextStyle(color: Color(0xff010E16), fontSize: 17.45),),
                  ),
                  Container(
                    child: Text("Show all", style: TextStyle(color: Color(0xff459FCA), fontSize: 11.63),),
                  )
                ],
              ),
            ),
Container(
  margin: EdgeInsets.only(top: 10),
  child: SizedBox(height: 90,
  child: ListView.builder(itemCount: categori.length,scrollDirection: Axis.horizontal,itemBuilder: ((context, index) {
    return Categories(resimurl: categori[index]["resimurl"].toString(),
     text: categori[index]["text"].toString());
  })),),
),
Container(
  margin: EdgeInsets.only(top: 10,right: 10,left: 10),
  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Container(child: Text("Restaurant",style: TextStyle(color: Color(0xff010E16), fontSize: 17.45)),),
  Container(child: Text("Show all",style: TextStyle(color: Color(0xff459FCA), fontSize: 11.63)),)
  ],),
),
          
          ],
        ),
        
        
      ),
      
      
    );
  }
}