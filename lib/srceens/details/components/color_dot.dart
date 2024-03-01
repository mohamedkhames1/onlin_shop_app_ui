import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class ColorDot extends StatelessWidget {
  const ColorDot({super.key, required this.color, this.isselected = false});

  final Color color;
  final bool isselected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
      EdgeInsets.only(top: kDefaultPaddin / 4, left: kDefaultPaddin / 4),
      padding: EdgeInsets.all(2.5),
      height: 24,
      width: 24,
      decoration: BoxDecoration(
          border: Border.all(color: isselected ? color : Colors.transparent),
          shape: BoxShape.circle),
      child: DecoratedBox(
        decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      ),
    );
  }
}
