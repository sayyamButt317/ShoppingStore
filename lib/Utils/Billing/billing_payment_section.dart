import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/section_heading.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Column(
      children:[
        SectionHeading(title:'Payment Method',buttonTitle:'Change',onPressed:(){}),
         const SizedBox(height:AppSize.spacebtwItems /2 ,),
         Row(
          children:[
            CircularContainer(
              width:60,
              height:35,
              backgroundColor: dark? AppColor.lightBackgroundColor : AppColor.white,
              padding: const EdgeInsets.all(AppSize.sm),
              child: const Image(image: AssetImage(ImageLink.paypal),fit: BoxFit.contain,),
            ),
            const SizedBox(width:AppSize.spacebtwItems /2 ,),
            Text('PayPal',style: Theme.of(context).textTheme.bodyLarge),
          ]
         ),
      ]
    );
  }
}