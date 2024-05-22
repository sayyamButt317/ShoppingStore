import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';

import '../../../../../Utils/Color/colors.dart';
import '../../../../../Utils/Sizes/Size.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = AppColor.white,
    this.backgroundColor = AppColor.white,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: AppSize.spacebtwItems),
        child: Column(
          children: [
            //circular container
            Container(
              width: 56,
              height: 56,
              padding: const EdgeInsets.all(AppSize.sm),
              decoration: BoxDecoration(
                color:
                    backgroundColor ?? (dark ? AppColor.black : AppColor.white),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                  color: dark ? AppColor.lightColor : AppColor.darkColor,
                ),
              ),
            ),
            const SizedBox(height: AppSize.spacebtwItems / 2),
            SizedBox(
                width: 55,
                child: Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .apply(color: textColor),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                )),
          ],
        ),
      ),
    );
  }
}
