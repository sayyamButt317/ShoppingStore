import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoppingstore/Utils/container.dart';

import '../../../Helper/Color/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
          color: AppColor.primaryColor,
          padding: const EdgeInsets.all(0),
          child: Stack(
            children: [
              Positioned(
                  top: -150,
                  bottom: -250,
                  child: CircularContainer(
                    backgroundcolor: AppColor.extWhite.withOpacity(0.1),
                  )),
              Positioned(
                  top: -150,
                  bottom: -250,
                  child: CircularContainer(
                    backgroundcolor: AppColor.extWhite.withOpacity(0.1),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
