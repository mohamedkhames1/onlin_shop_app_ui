import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import 'component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: kTextColor,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/search.svg',
                color: kTextColor,
              )),
          IconButton(
              onPressed: () {},
              icon:
                  SvgPicture.asset('assets/icons/cart.svg', color: kTextColor)),
        ],
      ),
      body: Body(),
    );
  }
}
