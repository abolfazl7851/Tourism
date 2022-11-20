
import 'package:flutter/material.dart';

class ImageSmoothSlider extends StatefulWidget {
  var controller;
  ImageSmoothSlider({Key? key, required this.controller}) : super(key: key);

  @override
  _ImageSmoothSliderState createState() => _ImageSmoothSliderState();
}

class _ImageSmoothSliderState extends State<ImageSmoothSlider> {

  var images = [
    'images/a1.jpg',
    'images/a2.png',
    'images/a3.png',
    'images/a4.png',
  ];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      allowImplicitScrolling: true,
      controller: widget.controller,
      children: [
        myPages(images[0]),
        myPages(images[1]),
        myPages(images[2]),
        myPages(images[3]),
      ],
    );
  }

  Widget myPages(String image){
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        child: Image(image: AssetImage(image),fit: BoxFit.fill,));
  }

}