import 'package:flutter/material.dart';
import 'package:spotify/views/album.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;

  const SongCard({
    key,
    required this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Album(
              image: image,
            ),
          ),
        );
      },
      child: Container(
        width: 140,
        child: Column(
          children: [
            Image(
              image: image,
              width: 140,
              height: 140,
            ),
            Text(
              "Bad Bunny, Drake, Justin Bieber, Taylor Swift, Ed Sheeran",
              style: TextStyle(color: Colors.white,fontSize: 16,),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}