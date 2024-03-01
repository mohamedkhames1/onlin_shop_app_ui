import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import 'color_dot.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Colors'),
              Row(
                children: [
                  ColorDot(
                    color: product.color,
                    isselected: true,
                  ),
                  ColorDot(
                    color: Colors.orange,
                  ),
                  ColorDot(
                    color: Colors.green,
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(children: [
                TextSpan(
                  text: 'Size\n',
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: '${product.size} cm',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ])),
        ),
      ],
    );
  }
}
