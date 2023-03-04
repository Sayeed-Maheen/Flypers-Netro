import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtworkScreen2WallpaperModel extends StatefulWidget {
  const ArtworkScreen2WallpaperModel({required key}) : super(key: key);

  @override
  State<ArtworkScreen2WallpaperModel> createState() =>
      _ArtworkScreen2WallpaperModelState();
}

class _ArtworkScreen2WallpaperModelState
    extends State<ArtworkScreen2WallpaperModel> {
  int _current = 0;
  final List<String> images = [
    "assets/images/screenWall1.png",
    "assets/images/screenWall2.png",
    "assets/images/screenwall3.png",
  ];
  final double _imageHeight = 500.h;
  final double _imageWidth = 250.w;
  List<Widget> screenWallpaperModel() {
    return images
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
                height: _imageHeight,
                width: _imageWidth,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: screenWallpaperModel(),
      options: CarouselOptions(
        enlargeCenterPage: true,
        aspectRatio: 11.w / 14.h,
        viewportFraction: 0.74.w,
        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
        onPageChanged: (index, reason) {
          setState(() {
            _current = index;
          });
        },
        // Set the margin here
      ),
    );
  }
}
