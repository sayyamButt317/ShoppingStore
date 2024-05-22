import 'package:flutter/cupertino.dart';

import '../../../../../Utils/ImagesLink/imagestring.dart';
import '../verticalimage_text/verticalimage_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, index) {
            return VerticalImageText(
              image: ImageLink.shoeIcon,
              title: 'Shoes',
              onTap: () {},
            );
          }),
    );
  }
}
