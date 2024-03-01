import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/models/Product.dart';

class Item extends StatelessWidget {
   Item({super.key,required this.product,required this.press});
Product product;
VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: product.color,
              ),
              child:Hero(tag: '${product.id}',
              child: Image.asset(product.image)) ,
            ),
          ),
          SizedBox(height: 10,),
          Text(product.title,style: TextStyle(color: kTextLightColor),),
          SizedBox(height: 10,),
          Text( '\$${product.price}',style: TextStyle(
              fontWeight: FontWeight.bold
          ),)
        ],
      ),
    );
  }
}
