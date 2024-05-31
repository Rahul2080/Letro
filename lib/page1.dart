import 'package:flutter/material.dart';
import 'package:letro/page2.dart';

class page1 extends StatefulWidget {
  const page1({super.key});

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
@override
  void initState() {
   Future.delayed(const Duration(seconds: 2),(){
     Navigator.of(context).push(MaterialPageRoute(builder: (_)=>page2()));
   }
   );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFEB1C24),
      body: Center(
        child: Text(
          "LETRO",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: "Barlow",
              fontSize: 24),
        ),
      ),
    );
  }
}
