import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Searchbar/searchbar_container.dart';
import 'package:shoppingstore/Widgets/grid_layout/grid_layout.dart';
import 'package:shoppingstore/Widgets/section_heading/section_heading.dart';
import '../../../../Utils/ImagesLink/imagestring.dart';

import '../../../../shop/Card/product_vertical_card.dart';
import '../../ProductScreen/Controller/productcontroller.dart';
import '../../ProductScreen/Model/product.dart';
import '../Widget/Appbar/home_appbar.dart';
import '../Widget/Category/home_category.dart';
import '../Widget/Promotion/promotion_slider.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  final productList = <Product>[];
  final ProductController productcontroller = Get.put(ProductController());
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
            Container(
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
                  const SizedBox(height: AppSize.spacebtwSections),
                  //Products
                  FutureBuilder(
                    future: ProductController().fetchProducts(),
                    builder: (context, snapshot) {
                
                        return Gridlayout(
                        itemCount: productcontroller.productList.length,
                        itemBuilder: (_, index) => ProductCardVertical(
                          product: productcontroller.productList[index],
                        ),
                      );
                      // }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
