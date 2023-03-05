import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/categoriesColorModel.dart';
import 'package:flypers/models/categoriesScreenWallpaperModel.dart';
import 'package:flypers/screens/mainHomeScreen.dart';

import '../widgets/appColors.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MainHomeScreen()));
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        appBar: AppBar(
            backgroundColor: AppColors.colorWhite,
            leading: IconButton(
              onPressed: () {
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => SettingScreen()));
              },
              icon: Icon(
                Icons.menu,
                color: AppColors.colorBlack,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Icon(Icons.search, color: AppColors.colorBlack),
              ),
            ],
            elevation: 0),
        body: Container(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 6.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Colors",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                      color: AppColors.colorTextMainBlack,
                    ),
                  ),
                ),
                SizedBox(height: 12.h),
                Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: CategoriesColorModel(),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(
                    "Categories",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 24.sp,
                      color: AppColors.colorTextMainBlack,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                CategoriesScreenWallpaperModel(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
