import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants.dart';

import 'card_cont.dart';

class CounterWithLover extends StatelessWidget {
  const CounterWithLover({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CardCont(),
        Container(
          height: 32,
          width: 32,
          margin: EdgeInsets.only(right: kDefaultPaddin),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle
          ),
          child: SvgPicture.asset('assets/icons/heart.svg'),
        )
      ],
    );
  }
}

