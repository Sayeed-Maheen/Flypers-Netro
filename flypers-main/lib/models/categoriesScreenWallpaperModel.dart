import 'package:flutter/material.dart';
import 'package:flypers/screens/artWorkScreen.dart';

class CategoriesScreenWallpaperModel extends StatefulWidget {
  const CategoriesScreenWallpaperModel({Key? key}) : super(key: key);

  @override
  State<CategoriesScreenWallpaperModel> createState() =>
      _CategoriesScreenWallpaperModelState();
}

class _CategoriesScreenWallpaperModelState
    extends State<CategoriesScreenWallpaperModel> {
  List<String> images = [
    "assets/images/catWall1.png",
    "assets/images/catWall2.png",
    "assets/images/catWall3.png",
    "assets/images/catWall4.png",
    "assets/images/catWall5.png",
    "assets/images/catWall6.png",
    "assets/images/catWall7.png",
    "assets/images/catWall8.png",
    "assets/images/catWall1.png",
    "assets/images/catWall2.png",
    "assets/images/catWall3.png",
    "assets/images/catWall4.png",
    "assets/images/catWall5.png",
    "assets/images/catWall6.png",
    "assets/images/catWall7.png",
    "assets/images/catWall8.png",
  ];

  List<String> titles = [
    "Artworks",
    "Bike",
    "Blurred",
    "Cars",
    "Cartoon",
    "Dark",
    "Game",
    "Anime",
    "Artworks",
    "Bike",
    "Blurred",
    "Cars",
    "Cartoon",
    "Dark",
    "Game",
    "Anime",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: images.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.5,
              mainAxisSpacing: 5,
              crossAxisSpacing: 12),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                String text = titles.elementAt(index);
                print(text);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ArtWorkScreen(
                              data: text,
                            )));
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                  ),
                ),
                // child: Text(
                //   titles[index], // assign the title here
                //   style: TextStyle(
                //     fontWeight: FontWeight.bold,
                //     fontSize: 16.0,
                //   ),
                // ),
              ),
            );
          },
        ),
      ),
    );
  }
}
