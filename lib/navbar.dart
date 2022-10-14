import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}
List<bool>clicked=[
  false,false,false,false
];

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
    
      decoration: BoxDecoration(border: Border.all(width: 1,color: Colors.grey.shade300),),
      margin: EdgeInsets.only(top: 10),
      height: 75.62,
      width: 414.96,
  
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(height: 45, width: 45,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: clicked[0]? Colors.black: Color(0xffFFFFFF)),
            child:IconButton(onPressed: (() {
              setState(() {
                clicked = [true,false,false,false];
              });
            }), icon: Icon(Icons.home_outlined, color: clicked[0]? Color(0xffFFFFFF): Color(0xff9B9B9B), size: 31.99,))
,            
             ),
             Container(height: 45, width: 45,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: clicked[1]? Colors.black: Color(0xffFFFFFF)),
            child:IconButton(onPressed: (() {
              setState(() {
                clicked = [false,true,false,false];
              });
            }), icon: Icon(Icons.favorite_border, color: clicked[1]? Color(0xffFFFFFF): Color(0xff9B9B9B), size: 31.99,))
,            
             ),
             Container(height: 45, width: 45,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: clicked[2]? Colors.black: Color(0xffFFFFFF)),
            child:IconButton(onPressed: (() {
              setState(() {
                clicked = [false,false,true,false];
              });
            }), icon: Icon(Icons.shopping_cart_outlined, color: clicked[2]? Color(0xffFFFFFF): Color(0xff9B9B9B), size: 31.99,))
,            
             ),
             Container(height: 45, width: 45,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: clicked[3]? Colors.black: Color(0xffFFFFFF)),
            child:IconButton(onPressed: (() {
              setState(() {
                clicked = [false,false,false,true];
              });
            }), icon: Icon(Icons.person_outline, color: clicked[3]? Color(0xffFFFFFF): Color(0xff9B9B9B), size: 31.99,))
,            
             ),
         
    ]));
      
    
  }
}
