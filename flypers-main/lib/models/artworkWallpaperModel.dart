import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArtworkWallpaperModel extends StatefulWidget {
  const ArtworkWallpaperModel({Key? key}) : super(key: key);

  @override
  State<ArtworkWallpaperModel> createState() => _ArtworkWallpaperModelState();
}

class _ArtworkWallpaperModelState extends State<ArtworkWallpaperModel> {
  final List<String> _imageUrls = [
    'assets/images/artWall1.png',
    'assets/images/artWall2.png',
    'assets/images/artWall3.png',
    'assets/images/artWall4.png',
    'assets/images/artWall5.png',
    'assets/images/artWall6.png',
    'assets/images/artWall7.png',
    'assets/images/artWall8.png',
    'assets/images/artWall9.png',
    'assets/images/artWall1.png',
    'assets/images/artWall2.png',
    'assets/images/artWall3.png',
    'assets/images/artWall4.png',
    'assets/images/artWall5.png',
    'assets/images/artWall6.png',
    'assets/images/artWall7.png',
    'assets/images/artWall8.png',
    'assets/images/artWall9.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 16,
            mainAxisSpacing: 10),
        itemCount: _imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(
            _imageUrls[index],
            height: 148.h,
            width: 102.w,
          );
        },
      ),
    );
  }
}
