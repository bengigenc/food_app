import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_app/categories.dart';
import 'package:food_app/location.dart';
import 'package:food_app/navbar.dart';
import 'package:food_app/promo.dart';
import 'package:food_app/restaurant.dart';
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
 List<Map<String,String>>restaurant =[
{
  "restImage":"assets/images/Restaurant1.png","restName":"Burger King","restPoint":"4.5","restTime":"25-35 mins","restKm":"8"
},
{
  "restImage":"assets/images/categories1.png","restName":"Pizzania","restPoint":"4.6","restTime":"20-30 mins","restKm":"7"
},
{
  "restImage":"assets/images/categories2.jpg","restName":"Pankcake","restPoint":"4.5","restTime":"25-35 mins","restKm":"8"
},
 ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body:  
      SingleChildScrollView(
        child: Container(
          
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
           Container(
      child: SizedBox(height: 400,width: 350,
      child: ListView.builder(itemCount: restaurant.length,scrollDirection: Axis.vertical,itemBuilder: ((context, index) {
        return Restaurant(restImage: restaurant[index]["restImage"].toString(), 
        restName: restaurant[index]["restName"].toString(), 
        restPoint: restaurant[index]["restPoint"].toString(), 
        restTime: restaurant[index]["restTime"].toString(), 
        restKm: restaurant[index]["restKm"].toString());
      })),),
           ),   
           
            ],
          ),
          
          
        ),
        
      ),
      bottomNavigationBar: Navbar(),
      
    );
  }
}