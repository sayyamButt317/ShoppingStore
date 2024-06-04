import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/cartitem_list.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CheckoutScreen/View/checkout_screen.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/custom_appbar/appbar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
      
        showBackArrow: true,
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(AppSize.defaultSpacing),
          //Items in Cart
          child: CartItemListView(),
        ),
      ),
      //checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpacing),
        child: ElevatedButton(onPressed:() => Get.to(()=> const CheckoutScreen()) ,child: const Text('Checkout \$${250}'),),
      ),
    );
  }
}



