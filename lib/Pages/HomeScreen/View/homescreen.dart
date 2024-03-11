import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shoppingstore/Helper/Color/colors.dart';
import 'package:shoppingstore/Helper/Sizes/Size.dart';
import 'package:shoppingstore/Pages/HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../../Helper/ImagesLink/imagestring.dart';
import '../../../Widgets/section_heading.dart';
import '../Widget/Appbar/home_appBar.dart';
import '../Widget/Category/home_category.dart';
import '../Widget/curved edge/CurvedEdgeWidget.dart';
import '../Widget/verticalimage_text/verticalimage_text.dart';

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
                child: SizedBox(
                  height: 300,
                  child: Column(
                    children: [
                      const SizedBox(height: AppSize.spacebtwSections),
                      const SearchBarContainer(
                        text: 'Search in Store',
                      ),
                      const SizedBox(height: AppSize.spacebtwSections),
                      const Padding(
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
                      const SizedBox(height: AppSize.spacebtwSections),
                      const HomeCategories()
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
