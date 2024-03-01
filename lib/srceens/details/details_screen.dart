import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/Product.dart';

import 'components/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});
final Product product;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            'assets/icons/back.svg',color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
              )),
          IconButton(
              onPressed: () {},
              icon:
              SvgPicture.asset('assets/icons/cart.svg')),
        ],
      ),
      body: DetailsBody(product: product,),
    );
  }
}
