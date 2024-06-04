import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/cartitem_list.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CheckoutScreen/Widget/coupon_code.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Utils/Billing/billing_address_section.dart';
import 'package:shoppingstore/Utils/Billing/billing_amount_section.dart';
import 'package:shoppingstore/Utils/Billing/billing_payment_section.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/bottomnavigation.dart';
import 'package:shoppingstore/Widgets/custom_appbar/appbar.dart';
import 'package:shoppingstore/Widgets/success_screen/success_screen.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text('Order Review',
            style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(AppSize.defaultSpacing),
          child: Column(
            children: [
              //items in cart
              const CartItemListView(showAddRemoveButton: false),
              const SizedBox(height: AppSize.spacebtwItems),

              //coupon TextField
              const CouponCode(),
              const SizedBox(height: AppSize.spacebtwItems),

              //Billing
              CircularContainer(
                showBorder: true,
                padding: const EdgeInsets.all(AppSize.md),
                backgroundColor: dark ? AppColor.black : AppColor.white,
                child: const Column(
                  children: [
                    //pricing
                    BillingAmountSection(),
                    SizedBox(height: AppSize.spacebtwItems),

                    //Divider
                    Divider(),
                    SizedBox(height: AppSize.spacebtwItems),

                    //Payment method
                    BillingPaymentSection(),
                    SizedBox(height: AppSize.spacebtwItems),
                    //Address
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(AppSize.defaultSpacing),
        child: ElevatedButton(
          onPressed: () => Get.to(() =>  SuccessScreen(
            image: ImageLink.successfulPaymentIcon,
            title: "Payment Success",
            subtitle: 'Your Item Will be Shipped Soon',
            onPressed: () => Get.offAll( () => const BottomNavigation()),
          )),
          child: const Text('Checkout \$${250}'),
        ),
      ),
    );
  }
}
