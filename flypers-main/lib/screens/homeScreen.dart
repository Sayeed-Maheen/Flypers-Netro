import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/homePageCarouselModel.dart';
import 'package:flypers/models/recentlyUpdatedModel.dart';
import 'package:flypers/models/wallpaperOfTheDayModel.dart';
import 'package:flypers/screens/settingScreen.dart';

import '../widgets/appColors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingScreen()));
            },
            icon: Icon(
              Icons.menu,
              color: AppColors.colorWhite,
            ),
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
          ),
          title: RichText(
            text: TextSpan(
              style: TextStyle(
                fontSize: 20.sp,
                color: AppColors.colorWhite,
              ),
              children: [
                TextSpan(
                  text: "FLY",
                  style: TextStyle(
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: "PERS",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Icon(Icons.search),
            ),
          ],
          elevation: 0),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(children: [
                Container(
                  height: 70.h,
                  color: AppColors.colorPrimary,
                ),
                Positioned(child: HomePageCarouselModel()),
              ]),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Wallpaper of the day",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: AppColors.colorTextMainBlack,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.colorPrimary,
                          ),
                        ),
                        SizedBox(width: 8.h),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.colorPrimary,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              WallpaperOfTheDayModel(),
              SizedBox(height: 24.h),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Recently Updated",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16.sp,
                        color: AppColors.colorTextMainBlack,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "See all",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: AppColors.colorPrimary,
                          ),
                        ),
                        SizedBox(width: 8.h),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: AppColors.colorPrimary,
                          size: 16,
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              RecentlyUpdatedModel(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
    );
  }
}
