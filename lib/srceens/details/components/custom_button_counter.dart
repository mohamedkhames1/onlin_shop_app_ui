
import 'package:flutter/material.dart';

class CustomButtomCunter extends StatelessWidget {
  const CustomButtomCunter({super.key, required this.iconData, required this.press});
  final IconData iconData;
  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlinedButton(
        style: ButtonStyle(
          padding:MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
          shape:  MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(13.0),
            ),
          ),
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}
