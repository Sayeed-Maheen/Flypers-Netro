import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../screens/artworkScreen2.dart';

class RecentlyUpdatedModel extends StatefulWidget {
  const RecentlyUpdatedModel({Key? key}) : super(key: key);

  @override
  State<RecentlyUpdatedModel> createState() => _RecentlyUpdatedModelState();
}

class _RecentlyUpdatedModelState extends State<RecentlyUpdatedModel> {
  final List<String> _imageUrls = [
    'assets/images/homeWall1.png',
    'assets/images/homeWall2.png',
    'assets/images/homeWall3.png',
    'assets/images/homeWall4.png',
    'assets/images/homeWall5.png',
    'assets/images/homeWall6.png',
    'assets/images/homeWall1.png',
    'assets/images/homeWall2.png',
    'assets/images/homeWall3.png',
    'assets/images/homeWall4.png',
    'assets/images/homeWall5.png',
    'assets/images/homeWall6.png',
    'assets/images/homeWall1.png',
    'assets/images/homeWall2.png',
    'assets/images/homeWall3.png',
    'assets/images/homeWall4.png',
    'assets/images/homeWall5.png',
    'assets/images/homeWall6.png',
    'assets/images/homeWall1.png',
    'assets/images/homeWall2.png',
    'assets/images/homeWall3.png',
    'assets/images/homeWall4.png',
    'assets/images/homeWall5.png',
    'assets/images/homeWall6.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              crossAxisSpacing: 5,
              mainAxisSpacing: 14),
          itemCount: _imageUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ArtworkScreen2()));
              },
              child: Image.asset(
                _imageUrls[index],
                height: 209.h,
                width: 158.w,
              ),
            );
          },
        ),
      ),
    );
  }
}
