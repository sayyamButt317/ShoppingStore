import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/cartitem_list.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/appbar.dart';

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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpacing),
        child: ElevatedButton(onPressed:(){} ,child: const Text('Checkout \$${250}'),),
      ),
    );
  }
}



