import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/categoriesScreenWallpaperModel.dart';
import 'package:flypers/widgets/appColors.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  int _currentSelection = 0;

  Widget _buildTabContent(int tabIndex) {
    switch (tabIndex) {
      case 0:
        return Container(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 16.h),
                CategoriesScreenWallpaperModel(),
              ],
            ),
          ),
        );
      case 1:
        return Center(
          child: Text('Tab 2 content'),
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
          Expanded(
            child: _buildTabContent(_currentSelection),
          ),
        ],
      ),
    );
  }
}
