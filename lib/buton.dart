import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class buton1 extends StatefulWidget {
  const buton1({super.key});

  @override
  State<buton1> createState() => _buton1State();
}

class _buton1State extends State<buton1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: GestureDetector(
        child: Container(
          alignment: Alignment.center,
          height: 63.99,
          width: 359.69,
          child: Text(
            "Login",
            style: TextStyle(color: Color(0xFFF5F5F5), fontSize: 29.09),
          ),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xFF314B61)),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        onTap: () => debugPrint("Login Buton tıklandı"),
      ),
    );
  }
}
