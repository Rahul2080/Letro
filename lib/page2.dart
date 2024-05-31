import 'dart:core';
import 'dart:core';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:letro/page3.dart';
import 'package:letro/page4.dart';

class page2 extends StatefulWidget {
  const page2({super.key});

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  List<String> img = ['assets/aa.jpg', 'assets/bb.jpg', 'assets/cc.jpg'];
  List<String> img1 = [
    'assets/wh.png',
    'assets/bsp.png',
    'assets/bsp1.png',
    'assets/hp.png',
    'assets/bsp2.png',
    'assets/lig.png',
  ];
  List<String> text = [
    'Apple Watch Nike Seri 5 44mm GPS Space Grey',
    'Altec Lansing Epsilonia Bluetooth Speaker',
    'JBL Clip 3 IPX7 Waterproof Portable Bluetooth',
    'Snopy SN-BT96 Pretty Back Bluetooth Headphone',
    'Altec Lansing Sunlight Speaker Bluetooth Speaker',
    'Lighting- Black Rustic Cube Lampshade Table Lamp',
  ];
  List<dynamic> price = [
    '\$460.00',
    '\$210.00',
    '\$290.90',
    '\$210.00',
    '\$866.00',
    '\$89.75',
  ];

  List<String> newlist = [
    'assets/watch.png',
    'assets/ph.png',
    'assets/lap.png',
    'assets/spk.png',
    'assets/lig.png',
    'assets/hp.png',
    'assets/bsp.png',
    'assets/bsp1.png',
  ];
  List<String> txt = [
    'Space Gray Aluminum Case\nwith Sport Band',
    'Harman Kardon Allure\nBluetooth Speaker',
    'Lenovo V15-IWL Intel Core i7 8565U 8GB 256GB...',
    'Beats 3 Wireless Over‑Ear\nHeadphones',
    'Lighting- Black Rustic Cube Lampshade Table Lamp',
    'Snopy SN-BT96 Pretty Back Bluetooth Headphone',
    'Altec Lansing Epsilonia Bluetooth Speaker',
    'JBL Clip 3 IPX7 Waterproof Portable Bluetooth',

  ];
  List<dynamic> money = [
    '\$399.90',
    '\$1299.90',
    '\$2.348,00',
    '\$349.00',
    '\$89.75',
    '\$210.00',
    '\$210.00',
    '\$290.90',


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF252837),
      appBar: AppBar(
        backgroundColor: Color(0xFF252837),
        title: const Text(
          'LETRO',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: "Barlow",
            fontSize: 21,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (_) => page3()));
            },
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
            ),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(1),
          child: TextButton(
            onPressed: () {
              showModalBottomSheet<void>(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 750,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 10),
                            child: Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Icon(
                                    Icons.category,
                                    color: Color(0xFF646E77),
                                    size: 30,
                                  ),
                                ),
                                const SizedBox(width: 25),
                                Container(
                                  width: 130,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 18),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.swap_vert,
                                          color: Color(0xFF646E77),
                                        ),
                                        Text(
                                          'Ranking',
                                          style: TextStyle(
                                            color: Color(0xFF646E77),
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 25,
                                ),
                                Container(
                                  width: 130,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(left: 24),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.filter_alt_outlined,
                                          color: Color(0xFF646E77),
                                        ),
                                        Text(
                                          'Filter',
                                          style: TextStyle(
                                            color: Color(0xFF646E77),
                                            fontSize: 16,
                                            fontFamily: 'Avenir',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Padding(
                            padding: EdgeInsets.only(right: 260),
                            child: Text(
                              'New (78)',
                              style: TextStyle(
                                color: Color(0xFF1B1B1B),
                                fontSize: 18,
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 550,
                            bottom: 20,
                            left: 20,
                            child: SizedBox(
                              width: 380,
                              height: 600,
                              child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 10.0,
                                mainAxisSpacing: 10.0,
                                shrinkWrap: true,
                                children: List.generate(
                                  newlist.length,
                                      (index) {
                                    return Stack(
                                      children: [
                                        Container(width: 220,height: 190,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            image: DecorationImage(
                                              image: NetworkImage('img.png'),
                                              fit: BoxFit.cover,
                                            ),
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(20.0),
                                            ),
                                          ),
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 160,
                                                height: 100,
                                                child:
                                                Image.asset(newlist[index]),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 10),
                                                child: Text(
                                                  txt[index],
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Color(0xFF646E77),
                                                    fontSize: 12,
                                                    fontFamily: 'Avenir',
                                                    fontWeight: FontWeight.w800,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  money[index],
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                    color: Color(0xFF252837),
                                                    fontSize: 14,
                                                    fontFamily: 'Avenir',
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Padding(
                                          padding: EdgeInsets.only(
                                              left: 148, top: 5),
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Image.asset(
              'assets/a.png',
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFF252837),
        child: Stack(
          children: [
            CarouselSlider.builder(
              itemCount: img.length,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
                    color: const Color(0xFF252837),
                    width: 500,
                    height: 70,
                    child: Image.asset(
                      img[itemIndex],
                      fit: BoxFit.cover,
                    ),
                  ),
              options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                  initialPage: 2,
                  height: 280),
            ),
            Positioned(
              top: 260,
              child: Container(
                width: 410,
                height: 530,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 270),
              child: Row(
                children: [
                  Text(
                    'New Products',
                    style: TextStyle(
                      color: Color(0xFF252837),
                      fontSize: 18,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(width: 190),
                  Text(
                    'see All',
                    style: TextStyle(
                      color: Color(0xFF252837),
                      fontSize: 18,
                      fontFamily: 'Avenir',
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(top: 330, left: 10, right: 20),
                child: Row(
                  children: [
                    Container(
                      width: 220,
                      height: 210,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Center(
                                child: SizedBox(
                                  width: 130,
                                  height: 120,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                    ),
                                    child: Image.asset(
                                      'assets/watch.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding:
                                EdgeInsets.only(left: 160, top: 10),
                                child: Icon(
                                  Icons.favorite_border,
                                  color: Colors.red,
                                ),
                              )
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              'Space Gray Aluminum Case\nwith Sport Band',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xFF646E77),
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ),
                          const Text(
                            '\$360',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF252837),
                              fontSize: 14,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w900,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 220,
                      height: 210,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                width: 210,
                                height: 130,
                                color: Colors.white,
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Image.asset('assets/ph.png'),
                                  ),
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 30,
                                decoration: ShapeDecoration(
                                  color: const Color(0xFFFC9803),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                ),
                                child: const Padding(
                                  padding:
                                  EdgeInsets.only(top: 5, left: 12),
                                  child: Text(
                                    '\%34',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Harman Kardon Allure\nBluetooth Speaker',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF646E77),
                              fontSize: 12,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 40),
                            child: Row(
                              children: [
                                Text(
                                  '\$999.99',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFF252837),
                                    fontSize: 14,
                                    fontFamily: 'Avenir',
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text('\$1299.90',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color(0x7F646E77),
                                      fontSize: 14,
                                      fontFamily: 'Avenir',
                                      fontWeight: FontWeight.w400,
                                      decoration: TextDecoration.lineThrough,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 220,
                      height: 210,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 130,
                            height: 130,
                            child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Image.asset('assets/ep.jpg'),
                                )),
                          ),
                          const Text(
                            'True Wireless Earbuds,\nTWS 5.0 Bluetooth in Ear Earbuds',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF252837),
                              fontSize: 12,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          const Text(
                            '\$1499.99',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF252837),
                              fontSize: 14,
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 490, right: 5, left: 5),
              child: Divider(
                height: 100,
                color: Color(0xFFE9ECF0),
                thickness: 2,
              ),
            ),
            Positioned(
              top: 550,
              bottom: 20,
              left: 20,
              child: SizedBox(
                width: 380,
                height: 250,
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                  shrinkWrap: true,
                  children: List.generate(
                    img1.length,
                        (index) {
                      return Stack(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (_) => page4(name: text[index],price:price[index],pic:img1[index]),),);},
                            child: Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                image: DecorationImage(
                                  image: NetworkImage('img.png'),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20.0),
                                ),
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 160,
                                    height: 100,
                                    child: Image.asset(img1[index]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Text(
                                      text[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF646E77),
                                        fontSize: 12,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 5),
                                    child: Text(
                                      price[index],
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        color: Color(0xFF252837),
                                        fontSize: 14,
                                        fontFamily: 'Avenir',
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 148, top: 5),
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      );
                    },
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
