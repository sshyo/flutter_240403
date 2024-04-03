import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Full Screen Image with Text',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/cake.jpg',
              fit: BoxFit.cover, // 화면에 꽉차게
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Happy', // 첫 번째 줄
                style: TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent.shade400,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'Birthday!', // 두 번째 줄
                style: TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  color: Colors.red.shade400,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                'from hyo',
                style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700 //
                ),
                textAlign: TextAlign.center, // 가운데 정렬.
              ),
            ],
          ),
        ],
      ),
    );
  }
}