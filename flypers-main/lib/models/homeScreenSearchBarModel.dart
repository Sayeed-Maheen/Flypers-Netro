import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flypers/widgets/appColors.dart';

class HomeScreenSearchBarModel extends StatefulWidget {
  const HomeScreenSearchBarModel({Key? key}) : super(key: key);

  @override
  State<HomeScreenSearchBarModel> createState() =>
      _HomeScreenSearchBarModelState();
}

class _HomeScreenSearchBarModelState extends State<HomeScreenSearchBarModel> {
  bool _expanded = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: _expanded ? MediaQuery.of(context).size.width - 20.w : 44.w,
      height: 70.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(33),
        color: AppColors.colorPrimary,
      ),
      child: Row(
        children: [
          Material(
            type: MaterialType.transparency,
            child: IconButton(
              onPressed: () {
                setState(() {
                  _expanded = !_expanded;
                });
              },
              icon: Icon(
                _expanded ? Icons.close : Icons.search,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
          ),
          Expanded(
              child: Container(
            child: _expanded
                ? const TextField(
                    cursorColor: AppColors.colorWhite,
                    decoration: InputDecoration(
                        hintText: 'Search',
                        hintStyle: TextStyle(color: AppColors.colorWhite),
                        contentPadding: EdgeInsets.fromLTRB(10, 8, 20, 10),
                        border: InputBorder.none),
                  )
                : null,
          )),
        ],
      ),
    );
  }
}
