import 'package:flutter/material.dart';

class MyLignFiles extends StatelessWidget {
  final IconData iconFile;
  final Color colorIcon;
  final String textFileName;
  final String textDate;
  final String textSize;
  const MyLignFiles({super.key, required this.iconFile, required this.colorIcon, required this.textFileName, required this.textDate, required this.textSize});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconFile,
              color: colorIcon,
              size: 28.0,
            ),
            Text(
              textFileName, // Remplacez ce texte par celui de votre choix
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        Text(
          textDate, // Remplacez ce texte par celui de votre choix
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        Text(
          textSize, // Remplacez ce texte par celui de votre choix
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}