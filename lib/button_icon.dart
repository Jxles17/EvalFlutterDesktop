import 'package:flutter/material.dart';

class MyButtonIcon extends StatelessWidget {
  final GestureTapCallback? onTap;
  final IconData iconData;
  final String text;
  final bool isSelected;
  const MyButtonIcon({super.key, required this.onTap, required this.iconData, required this.text, required this.isSelected});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: isSelected ? const Color.fromARGB(255, 1, 150, 249) : const Color.fromARGB(255, 34, 34, 46)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              iconData,
              color: isSelected ? const Color.fromARGB(255, 34, 34, 46) : const Color.fromARGB(255, 108, 108, 116),
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: TextStyle(
                color: isSelected ? const Color.fromARGB(255, 34, 34, 46) : const Color.fromARGB(255, 108, 108, 116),
                fontSize: 24,
                fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
              ),
            )
          ],
        ),
      ),
    );
  }
}