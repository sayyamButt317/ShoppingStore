import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Core/Color/colors.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Controller/home_controller.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Banner/banner_image.dart';
import '../../../../../Core/Sizes/Size.dart';
import '../Container/circularcontainer.dart';

class PromotionSlider extends StatelessWidget {
  const PromotionSlider({
    super.key,
    required this.banners,
  });

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1,
              onPageChanged: (index, _) =>
                  controller.updatePageIndicator(index)),
          items: banners.map((url) => RoundedImage(imageUrl: url)).toList(),
        ),
        const SizedBox(height: AppSize.spacebtwSections),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  CircularContainer(
                    width: 20,
                    height: 4,
                    margin: const EdgeInsets.only(right: 10),
                    backgroundColor: controller.carouselCurrentIndex.value == i
                        ? AppColor.primaryColor
                        : AppColor.grey,
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
