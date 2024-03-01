import 'package:flutter/material.dart';

import 'custom_button_counter.dart';

class CardCont extends StatefulWidget {
  const CardCont({super.key});

  @override
  State<CardCont> createState() => _CardContState();
}

class _CardContState extends State<CardCont> {
  int itemcont=1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtomCunter(iconData: Icons.remove, press: () {
          if(itemcont>1){
            setState(() {
              itemcont--;
            });
          }
        },),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(itemcont.toString().padLeft(2,'0'),style: TextStyle(fontSize: 20),),
        ),
        CustomButtomCunter(iconData: Icons.add, press: () {
          setState(() {
            itemcont++;
          });
        },),
      ],
    );
  }
}
