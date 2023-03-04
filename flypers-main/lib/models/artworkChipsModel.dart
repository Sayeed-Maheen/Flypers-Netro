import 'package:flutter/material.dart';

import '../widgets/appColors.dart';

class ArtworkChipsModel extends StatefulWidget {
  const ArtworkChipsModel({Key? key}) : super(key: key);

  @override
  State<ArtworkChipsModel> createState() => _ArtworkChipsModelState();
}

class _ArtworkChipsModelState extends State<ArtworkChipsModel> {
  List<String> _data = [
    "Anime",
    "Blue",
    "Tag",
    "Tag2",
    "Tag3",
    "Tag4",
  ];
  List<String> _selectedData = [];

  _onSelected(bool selected, String data) {
    setState(() {
      if (selected) {
        _selectedData.add(data);
      } else {
        _selectedData.remove(data);
      }
    });
  }

  TextStyle _selectedStyle = TextStyle(
    color: Colors.white,
    // Set any other style properties as per your design requirements
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Row(
            children: [
              Wrap(
                spacing: 5,
                children: _data.map((data) {
                  return FilterChip(
                    showCheckmark: false,
                    backgroundColor: AppColors.colorWhite,
                    label: Text(
                      data,
                      style: _selectedData.contains(data)
                          ? _selectedStyle
                          : TextStyle(color: AppColors.colorBlackMidEmp),
                    ),
                    shape: StadiumBorder(
                        side: BorderSide(color: AppColors.colorWhiteLowEmp)),
                    selected: _selectedData.contains(data),
                    selectedColor: AppColors.colorPrimary,
                    padding: EdgeInsets.all(5),
                    onSelected: (selected) => _onSelected(selected, data),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
