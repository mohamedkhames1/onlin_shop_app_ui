
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class ProductTiteWithImage extends StatelessWidget {
  const ProductTiteWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Aristocratic Hand bag',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            'Office Code',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.white),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RichText(
                text: TextSpan(children: [
                  TextSpan(
                    text: 'Price \n',
                  ),
                  TextSpan(
                      text: "\$${product.price}",
                      style: TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold))
                ]),
              ),
              Expanded(
                  child: Hero(
                    tag: '${product.id}',
                    child: Image.asset(
                      product.image,
                      fit: BoxFit.fill,
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
