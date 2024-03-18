import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import '../../../../Core/Color/colors.dart';
import '../../../../Core/ImagesLink/imagestring.dart';
import '../../../../Core/Sizes/Size.dart';
import '../../../../Widgets/appbar.dart';
import '../../../../Widgets/circular_image.dart';
import '../../../../Widgets/section_heading.dart';
import '../../HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../../../shop/carticon/cart_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CartCounterIcon(onPressed: () {}, iconColor: AppColor.darkColor)
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: HelperFunction.boolIsDarkMode(context)
                  ? AppColor.darkColor
                  : AppColor.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSize.defaultSpacing),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    //search bar
                    const SizedBox(
                      height: AppSize.spacebtwItems,
                    ),
                    const SearchBarContainer(
                      text: 'Search in Store_Screen',
                      showBorder: true,
                      showBackground: false,
                      padding: EdgeInsets.zero,
                    ),
                    const SizedBox(
                      height: AppSize.spacebtwItems,
                    ),

                    //Featured Brands
                    SectionHeading(title: 'Featured Brands', onPressed: () {}),
                    const SizedBox(
                      height: AppSize.spacebtwItems / 1.5,
                    ),
                    CircularContainer(
                      padding: EdgeInsets.all(AppSize.sm),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          //Icon
                          CircularImage(
                            isNetworkImage: false,
                            image: ImageLink.clothIcon,
                            backgroundColor: Colors.transparent,
                            overlayColor: HelperFunction.boolIsDarkMode(context)
                                ? AppColor.white
                                : AppColor.black,
                          ),
                          const SizedBox(
                            height: AppSize.spacebtwItems /2),


                          //Text
                          Column(
                            children: [

                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ];
        },
        body: Container(),
      ),
    );
  }
}
