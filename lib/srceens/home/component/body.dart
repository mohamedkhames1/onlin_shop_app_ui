import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../constants.dart';
import 'categories.dart';
import 'custom_grid_view.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            'Woman',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        Categories(),
        Expanded(child: CustomGridView()),
      ],
    );
  }
}
