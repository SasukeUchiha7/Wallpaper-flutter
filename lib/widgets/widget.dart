import 'package:flutter/material.dart';
import 'package:wallpaper_app/model/wallpaper_model.dart';
import 'package:wallpaper_app/screens/image_view.dart';

Widget brandName() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        "Wallpaper",
        style: TextStyle(color: Colors.black87),
      ),
      Text(
        "Hub",
        style: TextStyle(color: Colors.blue),
      ),
    ],
  );
}

Widget tag() {
  return RichText(
    text: TextSpan(
      style: TextStyle(color: Colors.blue, fontSize: 12),
      children: [
        TextSpan(text: "powered by "),
        TextSpan(
            text: "Pexels",
            style:
                TextStyle(fontWeight: FontWeight.bold, color: Colors.black87))
      ],
    ),
  );
}

Widget wallpaperList({List<WallpaperModel> wallpapers, context}) {
  return Container(
    margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
    child: GridView.count(
      shrinkWrap: true,
      physics: ClampingScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 0.6,
      mainAxisSpacing: 6.0,
      crossAxisSpacing: 6.0,
      children: wallpapers.map((e) {
        return GridTile(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ImageView(
                    imageUrl: e.src.portrait,
                  ),
                ),
              );
            },
            child: Hero(
              tag: e.src.portrait,
              child: Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    e.src.portrait,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        );
      }).toList(),
    ),
  );
}
