import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/widgets/appColors.dart';
import 'package:flypers/widgets/tabBar.dart';

class ArtWorkScreen extends StatefulWidget {
  const ArtWorkScreen({Key? key}) : super(key: key);

  @override
  State<ArtWorkScreen> createState() => _ArtWorkScreenState();
}

class _ArtWorkScreenState extends State<ArtWorkScreen> {
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
              child: Icon(Icons.search, color: AppColors.colorBlack),
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
                  "Artworks",
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorTextMainBlack),
                ),
                SizedBox(height: 16.h),
                Expanded(child: MyScreen())
              ],
            )),
      ),
    );
  }
}
