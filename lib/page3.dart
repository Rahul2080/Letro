import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class page3 extends StatefulWidget {
  const page3({super.key});

  @override
  State<page3> createState() => _page3State();
}

class _page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                width: 390,
                height: 55,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 1),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.search,size: 40,),
                    Container(width: 300,height: 30,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: " Search Categories, Products",
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 260),
            child: Text(
              'Popular',
              style: TextStyle(
                color: Color(0xFF252837),
                fontSize: 18,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(right: 210),
            child: Text(
              'Apple MacBook Pro\nBeats3\nApple Watch\nSpeakers\nHarman Kardon\nAirPods3',
              style: TextStyle(
                color: Color(0xFF585858),
                fontSize: 14,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
