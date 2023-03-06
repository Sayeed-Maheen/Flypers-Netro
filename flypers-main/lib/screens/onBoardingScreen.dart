import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/widgets/appColors.dart';
import 'package:flypers/widgets/myButton.dart';

import 'mainHomeScreen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorBackground,
        body: Column(
          children: [
            SizedBox(
              height: 120.h,
            ),
            Center(
              child: Image.asset(
                "assets/images/appLogo2.png",
                height: 190.h,
                width: 190.w,
              ),
            ),
            SizedBox(
              height: 82.h,
            ),
            Text(
              "Welcome to",
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
                color: AppColors.colorWhite,
              ),
            ),
            RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: 48.sp,
                  color: AppColors.colorPrimary,
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
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 108.h),
            Text(
              "Terms of use  & Privacy Policy",
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.colorPrimary,
              ),
            ),
            SizedBox(height: 6.h),
            Text(
              " This policy explains how we collect, use\n and disclose your information when you use\n our mobile wallpaper app.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.colorBlackLowEmp,
              ),
            ),
            SizedBox(height: 25.h),
            MyButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHomeScreen(
                                value: 0,
                              )));
                },
                text: "Accept and Continue")
          ],
        ));
  }
}
