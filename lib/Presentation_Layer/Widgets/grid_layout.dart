
import 'package:flutter/cupertino.dart';

import '../../Core/ProductCardDetails/Card/product_vertical_card.dart';
import '../../Core/Sizes/Size.dart';

class Gridlayout extends StatelessWidget {
  const Gridlayout({
    super.key, required this.itemCount, this.mainAxisExtent = 288, required this.itemBuilder,
  });
final int itemCount;
final double? mainAxisExtent;
final Widget? Function(BuildContext,int)itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
      const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSize.gridViewSpacing,
          crossAxisSpacing: AppSize.gridViewSpacing,
          mainAxisExtent: 288),
      itemBuilder: (_, index) => const ProductCardVertical(),
    );
  }
}
