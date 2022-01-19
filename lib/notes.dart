import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List imgList = [
  'assets/images/chord1.jfif',
  'assets/images/chord2.jfif',
  'assets/images/chord3.jfif',
];

class Notes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red.shade50,
      appBar: AppBar(
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 40.2,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(360)),
        elevation: 0.00,
        backgroundColor: Colors.pinkAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.home_outlined),
        ),
        title: Text(
          "Xylophone Notes",
          style: TextStyle(color: Colors.white),
        ),
      ),

      body: Builder(
        builder: (context) {
          final double height = MediaQuery.of(context).size.height;
          return CarouselSlider(
            options: CarouselOptions(
              height: height,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              // autoPlay: false,
            ),
            items: imgList
                .map((item) => Container(
                      child: Center(
                          child: Image.asset(
                        item,
                        fit: BoxFit.cover,
                        height: height,
                          )
                      ),
                    ),
            )
                .toList(),
          );
        },
      ),
    ),
    );

  }
}
