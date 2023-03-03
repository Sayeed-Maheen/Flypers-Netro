import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WallpaperOfTheDayModel extends StatefulWidget {
  const WallpaperOfTheDayModel({Key? key}) : super(key: key);

  @override
  State<WallpaperOfTheDayModel> createState() => _WallpaperOfTheDayModelState();
}

class _WallpaperOfTheDayModelState extends State<WallpaperOfTheDayModel> {
  final List<String> _imageUrls = [
    "assets/images/day1.png",
    "assets/images/day2.png",
    "assets/images/day3.png",
    "assets/images/day1.png",
    "assets/images/day2.png",
    "assets/images/day3.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73.h,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: _imageUrls.length,
        padding: EdgeInsets.only(right: 16),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 16),
            child: Image.asset(
              _imageUrls[index],
              height: 73.h,
              width: 119.w,
            ),
          );
        },
      ),
    );
  }
}
