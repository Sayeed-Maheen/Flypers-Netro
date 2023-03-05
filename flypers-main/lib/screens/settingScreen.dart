import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/appColors.dart';
import 'mainHomeScreen.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool isSwitched = false;
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 57.h),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.w600,
                    color: AppColors.colorBlack,
                  ),
                ),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.notifications),
                        SizedBox(width: 12.w),
                        Text(
                          "Push notification",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorTextMainBlack,
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Divider(height: 1),
                SizedBox(height: 24.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.folder_zip),
                    SizedBox(width: 12.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Download Location",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorTextMainBlack,
                          ),
                        ),
                        Text(
                          "Downloads /storage/emulated/0/Android/data/\ncom.android.netrowalls/files/downalod",
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                            color: AppColors.colorBlackLowEmp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Divider(height: 1),
                SizedBox(height: 24.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.download_for_offline),
                        SizedBox(width: 12.w),
                        Text(
                          "Ask where to save files",
                          style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.colorTextMainBlack,
                          ),
                        ),
                      ],
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    )
                  ],
                ),
                SizedBox(height: 24.h),
                Divider(height: 1),
                SizedBox(height: 24.h),
                Row(
                  children: [
                    Icon(Icons.policy),
                    SizedBox(width: 12.w),
                    Text(
                      "Privacy policy",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.colorTextMainBlack,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
