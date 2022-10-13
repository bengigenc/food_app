import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Promo extends StatefulWidget {
  const Promo({super.key});

  @override
  State<Promo> createState() => _PromoState();
}

class _PromoState extends State<Promo> {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image.asset("assets/images/promo.png"),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Get Special Discount",
                  style: TextStyle(color: Color(0xff9B9B9B), fontSize: 15.51),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 14, left: 24),
                child: Text(
                  "up to 75%",
                  style: TextStyle(color: Color(0xffF5F5F5), fontSize: 34.9),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20,),
                alignment: Alignment.center,
                height: 25.21,
                width: 116.34,
                color: Color(0xffF5F5F5),
                child: Text(
                  "Claim Voucher",
                  style: TextStyle(color: Color(0xff010E16)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}