import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/artworkWallpaperModel.dart';
import 'package:flypers/screens/artworkScreen2.dart';
import 'package:flypers/widgets/appColors.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class TabbarModel extends StatefulWidget {
  @override
  _TabbarModelState createState() => _TabbarModelState();
}

class _TabbarModelState extends State<TabbarModel> {
  int _currentSelection = 0;

  Widget _buildTabContent(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArtworkScreen2()));
                    },
                    child: ArtworkWallpaperModel()),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        );
      case 1:
        return Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ArtworkScreen2()));
                    },
                    child: ArtworkWallpaperModel()),
                SizedBox(height: 16.h),
              ],
            ),
          ),
        );

      default:
        return SizedBox.shrink();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorWhite,
      body: Column(
        children: [
          SizedBox(
            width: 600.w,
            child: MaterialSegmentedControl(
              borderColor: AppColors.colorWhite,
              unselectedColor: AppColors.colorTabUnselected,
              selectedColor: AppColors.colorPrimary,
              children: {
                0: Text('Recently added'),
                1: Text('Trending'),
              },
              selectionIndex: _currentSelection,
              onSegmentTapped: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(child: _buildTabContent(_currentSelection)),
        ],
      ),
    );
  }
}
