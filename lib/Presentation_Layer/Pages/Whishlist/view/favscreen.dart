import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/View/homescreen.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/Model/product.dart';
import 'package:shoppingstore/Utils/Icon/circular_icon.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/custom_appbar/appbar.dart';
import 'package:shoppingstore/Widgets/grid_layout/grid_layout.dart';
import 'package:shoppingstore/shop/Card/product_vertical_card.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key, this.product});
  
  final Product? product; // Make the product nullable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text('Whishlist', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          CircularIcon(icon: Iconsax.add, onPressed: () => Get.to(HomeScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            children: [
              if (product != null) // Check if product is not null
                Gridlayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => ProductCardVertical(product: product!),
                )
              else
                const Center(child: Text('No products available')),
            ],
          ),
        ),
      ),
    );
  }
}
