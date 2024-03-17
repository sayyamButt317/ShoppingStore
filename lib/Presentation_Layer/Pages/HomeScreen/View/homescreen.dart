import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Color/colors.dart';
import 'package:shoppingstore/Core/Sizes/Size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../../../Core/ImagesLink/imagestring.dart';
import '../../../../Widgets/grid_layout.dart';
import '../../../../Widgets/section_heading.dart';
import '../../../../shop/Card/product_vertical_card.dart';
import '../Widget/Appbar/home_appBar.dart';
import '../Widget/Category/home_category.dart';
import '../Widget/Promotion/promotion_slider.dart';
import '../Widget/curved edge/CurvedEdgeWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // var productList = <Product>[];
  // final ProductController productcontroller = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: AppColor
                  .primaryColor, // Set background color to primary color
              child: const HomeAppBar(),
            ),
            CurvedEdgeWidget(
              child: Container(
                color: AppColor.primaryColor,
                padding: const EdgeInsets.all(0),
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      const SizedBox(height: AppSize.spacebtwSections),
                      const SearchBarContainer(
                        text: 'Search in Store',
                      ),
                      const SizedBox(height: AppSize.spacebtwSections),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: AppSize.defaultSpacing),
                        child: Column(
                          children: [
                            //Heading
                            SectionHeading(
                              title: 'Popular Categories',
                              showActionButton: false,
                              textColor: Colors.white,
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                      const SizedBox(height: AppSize.spacebtwSections),
                      const HomeCategories(),
                    ],
                  ),
                ),
              ),
            ),
            //Slider
            Padding(
              padding: const EdgeInsets.all(AppSize.defaultSpacing),
              child: Column(
                children: [
                  const PromotionSlider(banners: [
                    ImageLink.promoBanner2,
                    ImageLink.promoBanner7,
                    ImageLink.promoBanner3
                  ]),
                  //Products
                  Gridlayout(
                      itemCount: 10,
                      itemBuilder: (_, index) => const ProductCardVertical()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
