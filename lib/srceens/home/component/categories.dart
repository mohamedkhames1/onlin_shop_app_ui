import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  selectIndex=index;
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(categories[index]
                      ,style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: selectIndex==index?Colors.black:kTextLightColor,
                      ),
                    ),
                    SizedBox(height: kDefaultPaddin/4,),
                    Container(
                      height: 2,
                      width: 30,
                      color:selectIndex==index? Colors.black:Colors.transparent,
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
