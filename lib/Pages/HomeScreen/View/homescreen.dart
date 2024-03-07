import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Helper/Devicesize/deviceutils.dart';
import '../../../Helper/Color/colors.dart';
import '../../../Helper/Sizes/Size.dart';
import '../Widget/Appbar/home_appBar.dart';
import '../Widget/Container/primaryheadcontainer.dart';

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
              const HomeAppBar(),
              const SizedBox(height: AppSize.spacebtwSections),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: AppSize.defaultSpacing),
                child: Container(
                  width: AppDeviceUtils.getScreenWidth(context),
                  padding: const EdgeInsets.all(AppSize.md),
                  decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius:BorderRadius.circular(AppSize.cardRadiusLg),
                    border: Border.all(color:AppColor.grey),


                  ),
                    child:Row(
                      children:[
                        const Icon(Iconsax.search_normal,color:AppColor.darkerGrey),
                        const SizedBox(width:AppSize.spacebtwItems),
                        Text('Search in Store ',style:Theme.of(context).textTheme.bodySmall)
                      ]
                    )
                ),
              ),
            ],
          ))
        ],
      ),
    ));
  }
}
