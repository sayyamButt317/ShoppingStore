import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/Color/colors.dart';
import 'package:shoppingstore/Helper/Sizes/Size.dart';
import 'package:shoppingstore/Pages/HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../../Helper/ImagesLink/imagestring.dart';
import '../../../Widgets/section_heading.dart';
import '../Widget/Appbar/home_appBar.dart';
import '../Widget/Banner/banner_image.dart';
import '../Widget/Category/home_category.dart';
import '../Widget/Container/circularcontainer.dart';
import '../Widget/Promotion/promotion_slider.dart';
import '../Widget/curved edge/CurvedEdgeWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                child:  const SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      SizedBox(height: AppSize.spacebtwSections),
                      SearchBarContainer(
                        text: 'Search in Store',
                      ),
                      SizedBox(height: AppSize.spacebtwSections),
                      Padding(
                        padding: EdgeInsets.only(left: AppSize.defaultSpacing),
                        child: Column(
                          children: [
                            SectionHeading(
                              title: 'Popular Categories',
                              showActionButton: false,
                              textColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: AppSize.spacebtwSections),
                      HomeCategories(),
                      Padding(
                        padding: EdgeInsets.all(AppSize.defaultSpacing),
                        child: PromotionSlider(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

