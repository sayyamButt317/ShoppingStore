
import 'package:flutter/cupertino.dart';
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
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
       SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: AppSize.gridViewSpacing,
          crossAxisSpacing: AppSize.gridViewSpacing,
          mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder:itemBuilder,
    );
  }
}
