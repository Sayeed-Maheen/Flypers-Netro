import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flypers/models/TrendingWallpaperModel.dart';
import 'package:flypers/widgets/appColors.dart';

import 'mainHomeScreen.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainHomeScreen()));
        return false;
      },
      child: Scaffold(
          body: Container(
        child: Stack(children: [
          TrendingWallpaperModel(),
          Positioned(
              top: 57.h,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Trending",
                  style: TextStyle(
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w600,
                      color: AppColors.colorWhite),
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 58, right: 16),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                "assets/images/download.svg",
                height: 48.h,
                width: 48.w,
              ),
            ),
          )
        ]),
      )),
    );
  }
}
