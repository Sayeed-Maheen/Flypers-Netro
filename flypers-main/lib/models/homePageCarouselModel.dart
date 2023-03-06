import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/widgets/appColors.dart';

class HomePageCarouselModel extends StatefulWidget {
  const HomePageCarouselModel({Key? key}) : super(key: key);

  @override
  State<HomePageCarouselModel> createState() => _HomePageCarouselModelState();
}

class _HomePageCarouselModelState extends State<HomePageCarouselModel> {
  List<String> images = [
    "assets/images/homePageCarousel.png",
    "assets/images/homePageCarousel.png",
    "assets/images/homePageCarousel.png",
    "assets/images/homePageCarousel.png",
  ];

  int currentIndex = 0;
  final PageController controller = PageController();
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentIndex == images.length - 1) {
        currentIndex = 0;
        controller.animateToPage(
          currentIndex,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        currentIndex++;
        controller.nextPage(
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 152.h,
            width: double.infinity,
            child: PageView.builder(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index % images.length;
                });
              },
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 10, left: 10),
                  child: SizedBox(
                    height: 152.h,
                    width: double.infinity,
                    child: Image.asset(
                      images[index % images.length],
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 8.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (var i = 0; i < images.length; i++)
                buildIndicator(currentIndex == i)
            ],
          ),
        ],
      ),
    );
  }

  Widget buildIndicator(bool isSelected) {
    return Container(
      margin: EdgeInsets.all(2),
      height: isSelected ? 8 : 8,
      width: isSelected ? 24 : 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: isSelected
            ? AppColors.colorPrimary
            : AppColors.colorIndicatorUnselected,
      ),
    );
  }
}
