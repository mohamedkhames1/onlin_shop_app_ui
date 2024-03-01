import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constants.dart';
import '../../../models/Product.dart';
import 'card_cont.dart';
import 'color_size.dart';
import 'counter_with_lover.dart';
import 'product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: SizedBox(
        height: size.height,
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: size.height * .36),
              padding: const EdgeInsets.only(
                  left: kDefaultPaddin, top: kDefaultPaddin * 6),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ColorAndSize(product: product),
                  const SizedBox(
                    height: kDefaultPaddin,
                  ),
                  Text(
                    product.description,
                    style: TextStyle(height: 1.5),
                  ),
                  const SizedBox(
                    height: kDefaultPaddin,
                  ),
                  const CounterWithLover(),
                  const SizedBox(
                    height: kDefaultPaddin,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        margin: EdgeInsets.only(right: kDefaultPaddin),
                        height: 50,
                        width: 58,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          border: Border.all(color: product.color),
                        ),
                        child: SvgPicture.asset(
                          'assets/icons/add_to_cart.svg',
                          color: product.color,
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Buy Now',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          ),
                          style: ButtonStyle(
                              backgroundColor:MaterialStateProperty.all<Color>(
                                product.color
                              ))
                        ),
                      ),
                      SizedBox(width: kDefaultPaddin,)
                    ],
                  )
                ],
              ),
            ),
            ProductTiteWithImage(product: product),
          ],
        ),
      ),
    );
  }
}
