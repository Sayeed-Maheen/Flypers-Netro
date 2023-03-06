import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/homePageCarouselModel.dart';
import 'package:flypers/models/homeScreenSearchBarModel.dart';
import 'package:flypers/models/recentlyUpdatedModel.dart';
import 'package:flypers/models/wallpaperOfTheDayModel.dart';
import 'package:flypers/screens/recentlyUpdatedScreen.dart';
import 'package:flypers/screens/settingScreen.dart';
import 'package:flypers/screens/wallpaperOfTheDayScreen.dart';

import '../widgets/appColors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  showExitPopup() {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            content: Text(
              "Do you want to exit?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: AppColors.colorTextMainBlack,
                  fontWeight: FontWeight.w700,
                  fontSize: 16.sp),
            ),
            contentPadding:
                EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 24),
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                        color: AppColors.colorPrimary,
                        borderRadius: BorderRadius.circular(100)),
                    child: InkWell(
                      onTap: () {
                        SystemNavigator.pop();
                      },
                      child: Center(
                        child: Text(
                          "Yes",
                          style: TextStyle(
                              color: AppColors.colorWhite,
                              fontWeight: FontWeight.w600,
                              fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  Container(
                    height: 30.h,
                    width: 72.w,
                    decoration: BoxDecoration(
                        color: AppColors.colorWhite,
                        border: Border.all(
                            width: 1.w, color: AppColors.colorWhiteLowEmp),
                        borderRadius: BorderRadius.circular(100)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Center(
                        child: Text(
                          "No",
                          style: TextStyle(
                              color: AppColors.colorTextMainBlack,
                              fontWeight: FontWeight.w300,
                              fontSize: 14.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
            actionsPadding: EdgeInsets.only(bottom: 32),
          );
        });
  }

  String screenName = "";
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showExitPopup();
        return false;
      },
      child: Scaffold(
        backgroundColor: AppColors.colorWhite,
        appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                String text = screenName.toString();
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SettingScreen(
                              screenName: 'fromHome',
                            )));
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
                child: HomeScreenSearchBarModel(),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      WallpaperOfTheDayScreen()));
                        },
                        child: Row(
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
                        ),
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
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      RecentlyUpdatedScreen()));
                        },
                        child: Row(
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
                        ),
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
      ),
    );
  }
// class MySearchDelegate extends MySearchDelegate{
//   @override
//   Widget? buildLeading (BuildContext context)=>IconButton(
//   onPressed: ()=>close(context,null),
//   icon: Icon(Icons.arrow_back),
//   );
//
//   @override
//   List<Widget>? buildActions (BuildContext context)=>[IconButton(
//   onPressed: (){
//   if ( query .isEmpty ) {
//   close(context,null);
//
//   } else {
//   query ="";
//   }},
//   icon: Icon(Icons.clear),
//   )];
//
//
//   @override
//   Widget? buildResult (BuildContext context)=>Center(child: Text(query, style: TextStyle(
//   fontSize: 50
//   )),);
//   @override
//   Widget? buildSuggetions (BuildContext context){
//   List<String> suggestions = [
//   "Brazil"
//   "Argentina"
//   "Bangladesh"
//   "Turkey"
//   ];
//   List<String> sugges
//
//   return ListView. builder(
//   itemCount: suggestions. length,
//   itemBuilder: (context, index) {
//   final suggetion = suggestions [index] ;
//
//   return ListTile(
//   title: Text (suggestion),
//   onTap: ( ) {
// query = suggetion;
//
//   showResults(context);
//
//   });
//
//   });
//   }
//
//   }
}
