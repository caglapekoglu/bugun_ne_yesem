import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            centerTitle: true,
            title: Text(
              'what should i eat today?',
              style: GoogleFonts.poppins(),
            ),
          ),
          body: FoodPage()),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int soupNo = 1;
  int foodNo = 1;
  int dessertNo = 1;

  void refreshFood() {
    setState(() {
      soupNo = Random().nextInt(5) + 1;
      foodNo = Random().nextInt(5) + 1;
      dessertNo = Random().nextInt(5) + 1;
    });
  }

  List<String> soupName = [
    'Ezogelin Çorbası',
    'Mercimek Çorbası',
    'Domates Çorbası',
    'Ramen',
    'Brokoli Çorbası'
  ];
  List<String> foodName = [
    'Körili Tavuk',
    'Mantı',
    'Hamburger',
    'Pizza',
    'Sezar Salata'
  ];
  List<String> dessertName = [
    'Waffle',
    'Künefe',
    'Donut',
    'San Sebastian',
    'Red Velvet Cake'
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: refreshFood,
                child: Image.asset('images/corba_$soupNo.jpg'),
              ),
            ),
          ),
          Text(
            soupName[soupNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: refreshFood,
                child: Image.asset('images/yemek_$foodNo.jpg'),
              ),
            ),
          ),
          Text(
            foodName[foodNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: TextButton(
                onPressed: refreshFood,
                child: Image.asset('images/tatli_$dessertNo.jpg'),
              ),
            ),
          ),
          Text(
            dessertName[dessertNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
