import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: Color.fromARGB(255, 255, 187, 0),
      indicatorBackgroundColor: Colors.white,
      height: 700,
      autoPlayInterval: 6000,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/Mouse G PRO X Superlight.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/mouse2.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/mouse3.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("images/mouse4.png"),
        ),
      ],
    );
  }
}
