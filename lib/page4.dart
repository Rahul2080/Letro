import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class page4 extends StatefulWidget {
  final String name;
  final String price;
  final String pic;

  const page4(
      {super.key, required this.name, required this.price, required this.pic});

  @override
  State<page4> createState() => _page4State();
}

class _page4State extends State<page4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CarouselSlider.builder(
                itemCount: 1,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) =>
                        Container(
                  color: Colors.white,
                  width: 500,
                  height: 70,
                  child: Image.asset(
                    widget.pic,
                  ),
                ),
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                    initialPage: 2,
                    height: 280),
              ),Padding(
                padding: const EdgeInsets.only(top: 20),
                child: TextButton(onPressed: (){Navigator.of(context).pop();},
                    child: Icon(Icons.arrow_back,color: Colors.black,size: 35,)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(widget.name),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                  itemSize: 20,
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (double value) {},
                ),
                Text(
                  '3.8  |  ',
                  style: TextStyle(
                    color: Color(0xFF646E77),
                    fontSize: 13,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  '137 Reviews',
                  style: TextStyle(
                      color: Color(0xFF3572AA),
                      fontSize: 13,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(widget.price),
          ),
          Divider(
            height: 50,
            thickness: 1,
            color: Color(0xFFECECEF),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Description',
              style: TextStyle(
                color: Color(0xFF252837),
                fontSize: 18,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Text(
              'Connection Type : Wireless\nBluetooth Connection : Yes\nWater Resistance: No\nNFC (Near Field Communication): Yes',
              style: TextStyle(
                color: Color(0xFF252837),
                fontSize: 14,
                fontFamily: 'Avenir',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 90,
        color: Colors.white,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                width: 70,
                height: 70,
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80),
                  ),
                ),
                child: Icon(
                  Icons.favorite,
                  color: Color(0xFF646E77),
                ),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 290,
              height: 70,
              decoration: ShapeDecoration(
                color: Color(0xFF00C170),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'ADD TO BASKET',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
