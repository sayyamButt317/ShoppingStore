import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Utils/Text/product_title_text.dart';
import 'package:shoppingstore/Widgets/producttitle_withverificationicon.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //imaage
        RoundedImage(
            imageUrl: ImageLink.product4,
            width: 60,
            height: 60,
            padding: const EdgeInsets.all(AppSize.sm),
            backgroundColor: HelperFunction.boolIsDarkMode(context)
                ? AppColor.darkerGrey
                : AppColor.lightColor),
        const SizedBox(
          width: AppSize.spacebtwItems,
        ),
    
        //Title,price and sale
        Expanded(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleWithVerificationIcon(
                title: 'Maybeline'),
            const Flexible(
                child: ProductTitleText(
              title: 'Black Sports Shoes',
              maxLines: 1,
            )),
            //Attributes
            Text.rich(TextSpan(
              children: [
                TextSpan(
                    text: ' Color ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' Black ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: ' Size ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: ' 7 ',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            )),
          ],
        ))
      ],
    );
  }
}
