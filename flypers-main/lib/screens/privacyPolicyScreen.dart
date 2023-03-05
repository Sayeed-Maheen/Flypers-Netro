import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/screens/settingScreen.dart';

import '../widgets/appColors.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              SizedBox(height: 40.h),
              InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreen()));
                  },
                  child: Icon(Icons.arrow_back,
                      color: AppColors.colorBlack, size: 30)),
              SizedBox(height: 24.h),
              Text(
                "Privacy policy",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.colorBlack,
                ),
              ),
              SizedBox(height: 24.h),
              Text(
                "1. Privacy Policy",
                style: TextStyle(
                  color: AppColors.colorBlackHighEmp,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.colorBlackLowEmp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 12.h),
              Text(
                "2. Data that we collect",
                style: TextStyle(
                  color: AppColors.colorBlackHighEmp,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.colorBlackLowEmp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 12.h),
              Text(
                "3. Competitions",
                style: TextStyle(
                  color: AppColors.colorBlackHighEmp,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.colorBlackLowEmp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 12.h),
              Text(
                "4. Cookies",
                style: TextStyle(
                  color: AppColors.colorBlackHighEmp,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.sp,
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "Lorem ipsum dolor sit amet consectetur. Egestas tortor sit suscipit aliquam suspendisse a pellentesque lectus. Nisi elit tellus cursus pulvinar. Vitae non at mauris lorem tortor tristique eu mi. Cursus ante arcu dui montes commodo. Erat erat.",
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.colorBlackLowEmp,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 12.h),
            ]),
          ),
        ),
      ),
    );
  }
}
