import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import '../../../../Core/Color/colors.dart';
import '../../HomeScreen/Widget/curved edge/curvededge.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // CustomCurvedEdges(
            //   child: Container(
            //     color: dark ? AppColor.darkerGrey : AppColor.lightColor,
            //     child: const Stack(
            //       children: [
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
