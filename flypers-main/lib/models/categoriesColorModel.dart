import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesColorModel extends StatelessWidget {
  final List<String> items = List.generate(12, (index) => "Item $index");
  final List<Color> colors = [
    Color(0xff979EE9),
    Color(0xffFFDD60),
    Color(0xff000000),
    Color(0xff2D8EFF),
    Color(0xffFC666A),
    Color(0xff515EDB),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        shrinkWrap: true,
        padding: EdgeInsets.only(left: 16, right: 16),
        itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 60.h,
                width: 60.w,
                child: CircleAvatar(
                  backgroundColor: colors[index % colors.length],
                ),
              ),
              SizedBox(width: 8.w)
            ],
          );
        },
      ),
    );
  }
}
