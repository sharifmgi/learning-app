import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/services.dart' show rootBundle;

class SlideCarousel extends StatelessWidget {
  final List<Slide> slides;

  SlideCarousel({required this.slides});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: slides.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        final slide = slides[index];
        return Stack(
          children: [
            Image.asset(slide.imageUrl, 
            //height: 200,
            //width: 600,
            fit: BoxFit.cover,),
            Positioned(
              top: 150,
              left: 10,
              child: Text(
                slide.title,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        );
      },
      options: CarouselOptions(
        height: 200,
        autoPlay: true,
        enlargeCenterPage: true,
        onPageChanged: (index, reason) {
          // Handle page change event
        },
      ),
    );
  }
}

class Slide {
  final String title;
  final String imageUrl;

  Slide({required this.title, required this.imageUrl});

  factory Slide.fromJson(Map<String, dynamic> json) {
    return Slide(
      title: json['title'],
      imageUrl: json['imageUrl'],
    );
  }
}

Future<List<Slide>> loadSlides() async {
  final jsonString = await rootBundle.loadString('assets/json/slide.json');
  final List<dynamic> jsonList = jsonDecode(jsonString);
  return jsonList.map((json) => Slide.fromJson(json)).toList();
}
