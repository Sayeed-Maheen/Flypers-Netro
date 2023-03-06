import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/searchBarModel.dart';
import 'package:flypers/models/tabBarModel.dart';
import 'package:flypers/widgets/appColors.dart';

class WallpaperOfTheDayScreen extends StatefulWidget {
  WallpaperOfTheDayScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<WallpaperOfTheDayScreen> createState() =>
      _WallpaperOfTheDayScreenState();
}

class _WallpaperOfTheDayScreenState extends State<WallpaperOfTheDayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar: AppBar(
          backgroundColor: AppColors.colorWhite,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: AppColors.colorBlack,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: SearchBarModel(),
            ),
          ],
          elevation: 0),
      body: Container(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Wallpaper of the day",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorTextMainBlack),
                ),
                SizedBox(height: 16.h),
                Expanded(child: TabbarModel()),
              ],
            )),
      ),
    );
  }
}
