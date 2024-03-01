import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/srceens/details/details_screen.dart';
import 'item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: .7,
            crossAxisSpacing: kDefaultPaddin,
            mainAxisSpacing: kDefaultPaddin
        ),
        itemBuilder: ( context, index) =>Item(product: products[index], press: () { 
          Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailsScreen(product: products[index])));
        },),
      ),
    );
  }
}
