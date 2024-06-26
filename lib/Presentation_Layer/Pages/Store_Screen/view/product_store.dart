import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Enum/enum.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Widgets/circular_icon/circular_image.dart';
import 'package:shoppingstore/Widgets/grid_layout/grid_layout.dart';
import 'package:shoppingstore/Widgets/section_heading/section_heading.dart';
import 'package:shoppingstore/Widgets/title_withicon/producttitle_withverificationicon.dart';

import '../../../../Utils/Color/colors.dart';
import '../../../../Utils/ImagesLink/imagestring.dart';
import '../../../../Utils/Sizes/app_size.dart';
import '../../../../Utils/TabBar/tab_bar.dart';
import '../../../../Widgets/custom_appbar/appbar.dart';

import '../../HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../../../shop/carticon/cart_icon.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: CustomAppBar(
          title:
              Text('Store', style: Theme.of(context).textTheme.headlineMedium),
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
                    ? AppColor.black
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
                        height: AppSize.spacebtwSections,
                      ),

                      //Featured Brands
                      SectionHeading(
                          title: 'Featured Brands', onPressed: () {}),
                      const SizedBox(
                        height: AppSize.spacebtwItems / 1.5,
                      ),
                      Gridlayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return GestureDetector(
                            onTap: () {},
                            child: CircularContainer(
                              padding: const EdgeInsets.all(AppSize.sm),
                              showBorder: true,
                              backgroundColor: Colors.transparent,
                              child: Row(
                                children: [
                                  //Icon
                                  Flexible(
                                    child: CircularImage(
                                      isNetworkImage: false,
                                      image: ImageLink.clothIcon,
                                      backgroundColor: Colors.transparent,
                                      overlayColor:
                                          HelperFunction.boolIsDarkMode(context)
                                              ? AppColor.white
                                              : AppColor.black,
                                    ),
                                  ),
                                  const SizedBox(
                                      height: AppSize.spacebtwItems / 2),

                                  //Text
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const BrandTitleWithVerificationIcon(
                                          title: 'Nike',
                                          brandTextSize: TextSizes.large,
                                        ),
                                        Text(
                                          '256 Products',
                                          overflow: TextOverflow.ellipsis,
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium,
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                //Tabs
                bottom: const AppTabBar(
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmetics')),
                  ],
                ),
              ),
            ];
          },
          body: Container(),
        ),
      ),
    );
  }
}
