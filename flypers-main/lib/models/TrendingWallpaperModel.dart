import 'package:flutter/material.dart';

class TrendingWallpaperModel extends StatelessWidget {
  final List<String> images = [
    'assets/images/trendingWall1.png',
    'assets/images/trendingWall2.png',
    'assets/images/trendingWall3.png',
  ];
  TrendingWallpaperModel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      scrollDirection: Axis.vertical,
      physics: PageScrollPhysics(),
      children: images.map((image) {
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
