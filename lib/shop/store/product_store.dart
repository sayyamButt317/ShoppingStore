import 'package:flutter/material.dart';
import 'package:shoppingstore/Core/Helperfunction/helper.dart';
import '../../Core/Color/colors.dart';
import '../../Core/Sizes/Size.dart';
import '../../Presentation_Layer/Pages/HomeScreen/Widget/Searchbar/searchbar_container.dart';
import '../../Widgets/appbar.dart';
import '../../Presentation_Layer/Pages/cart_icon.dart';

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
              backgroundColor: HelperFunction.boolIsDarkMode(context) ? AppColor.darkColor : AppColor.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(AppSize.defaultSpacing),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    //search bar
                    SizedBox(
                      height: AppSize.spacebtwItems,
                    ),
                    SearchBarContainer(
                      text: 'Search in store',
                      showBorder: true,
                      showBackground: false,
                    ),
                    SizedBox(
                      height: AppSize.spacebtwItems,
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
