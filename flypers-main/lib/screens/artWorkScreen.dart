import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/models/tabBarModel.dart';
import 'package:flypers/widgets/appColors.dart';

class ArtWorkScreen extends StatefulWidget {
  final String data;
  ArtWorkScreen({Key? key, required this.data}) : super(key: key);

  @override
  State<ArtWorkScreen> createState() => _ArtWorkScreenState();
}

class _ArtWorkScreenState extends State<ArtWorkScreen> {
  String value = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    value = widget.data;
  }

  @override
  Widget build(BuildContext context) {
    print(value);
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
                  value,
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.w400,
                      color: AppColors.colorTextMainBlack),
                ),
                SizedBox(height: 16.h),
                Expanded(child: TabbarModel()),
              ],
            )),
      ),
    );
  }
}
