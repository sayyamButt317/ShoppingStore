import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Helper/Theme/text_theme.dart';
import 'package:shoppingstore/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Widgets/appbar.dart';
import '../../../Helper/Color/colors.dart';
import '../../../Helper/Text/statictext.dart';
import '../Widget/curved edge/CurvedEdgeWidget.dart';
import '../Widget/Container/primaryheadcontainer.dart';
import '../Widget/curved edge/curvededge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          PrimaryHeadContainer(
              child: Column(
            children: [
              CustomAppBar(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStaticText.homeAppbarTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: AppColor.grey),
                    ),
                    Text(
                      AppStaticText.signUpTitle,
                      style: Theme.of(context)
                          .textTheme
                          .labelMedium!
                          .apply(color: AppColor.white),
                    )
                  ],
                ),
                actions: [IconButton(onPressed: (){}, icon: const Icon(Iconsax.shopping_bag,color:AppColor.white))],
              )
            ],
          ))
        ],
      ),
    ));
  }
}
