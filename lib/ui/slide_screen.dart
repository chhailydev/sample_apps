import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SlideScreenWidget extends StatefulWidget {
  const SlideScreenWidget({super.key});
  @override
  _SlideshowWidgetState createState() => _SlideshowWidgetState();
}

class _SlideshowWidgetState extends State<SlideScreenWidget> {
  List<String> imageList = [
    'assets/images/w1.jpg',
    'assets/images/w2.jpeg',
    'assets/images/w3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        aspectRatio: 21 / 9, //You can adjust aspect ratio as needed
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: imageList.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Image.asset(image, fit: BoxFit.cover),
            );
          },
        );
      }).toList(),
    );
  }
}
