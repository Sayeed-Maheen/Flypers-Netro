import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../widgets/appColors.dart';

class ArtworkWallpaperScreen extends StatefulWidget {
  final String imageData;
  const ArtworkWallpaperScreen({Key? key, required this.imageData})
      : super(key: key);

  @override
  State<ArtworkWallpaperScreen> createState() => _ArtworkWallpaperScreenState();
}

class _ArtworkWallpaperScreenState extends State<ArtworkWallpaperScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 300.h,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: <Widget>[
                SizedBox(height: 16.h),
                Image.asset("assets/images/box.png", height: 6.h, width: 40.w),
                SizedBox(height: 24.h),
                Text(
                  "What would like to do?",
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w700,
                      color: AppColors.colorTextMainBlack),
                ),
                SizedBox(height: 24.h),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/phone.png",
                          height: 20.h,
                          width: 20.w,
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'Set on home screen',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorTextMainBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Divider(height: 1),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lockPhone.png",
                          height: 20.h,
                          width: 20.w,
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          "Set on lock screen",
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorTextMainBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Divider(height: 1),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/lockPhone2.png",
                          height: 20.h,
                          width: 20.w,
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'Set on both screen',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorTextMainBlack),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Divider(height: 1),
                SizedBox(height: 16.h),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/images/save.png",
                          height: 24.h,
                          width: 24.w,
                        ),
                        SizedBox(width: 12.w),
                        Text(
                          'Save to device',
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                              color: AppColors.colorTextMainBlack),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  String imageValue = '';
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    imageValue = widget.imageData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(imageValue), fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50.h),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: AppColors.colorWhite,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Artworks by Sayeed",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        color: AppColors.colorWhite),
                  ),
                ),
                SizedBox(height: 4.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.visibility_outlined,
                          size: 18, color: AppColors.colorWhite),
                      SizedBox(width: 4.w),
                      Text(
                        "23,009 views",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.colorWhite),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Center(
                child: Container(
                  height: 64.h,
                  width: 268.w,
                  decoration: BoxDecoration(
                      color: AppColors.colorPrimary,
                      borderRadius: BorderRadius.circular(33)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          _showBottomSheet(context);
                        },
                        child: Icon(
                          Icons.format_paint,
                          color: AppColors.colorWhite,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Fluttertoast.showToast(
                            msg: 'Wallpaper downloaded',
                            gravity: ToastGravity.BOTTOM,
                            backgroundColor: Colors.grey[700],
                            textColor: Colors.white,
                          );
                        },
                        child: Container(
                            height: 40.h,
                            width: 40.w,
                            child:
                                SvgPicture.asset("assets/images/download.svg")),
                      ),
                      Icon(
                        Icons.more_horiz_rounded,
                        color: AppColors.colorWhite,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
