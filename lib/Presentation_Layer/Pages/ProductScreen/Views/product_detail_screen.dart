import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/bottom_addtocart.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/product_attributes.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/product_metadata.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/product_image.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/ProductScreen/widget/rating_share.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import '../Model/product.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddtoCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Product Image Slider
            ProductImageSlider(dark: dark, product: product),
            Padding(
              padding: const EdgeInsets.only(
                  right: AppSize.defaultSpacing,
                  left: AppSize.defaultSpacing,
                  bottom: AppSize.defaultSpacing),
              child: Column(children: [
                //Rating and share
                Ratingandshare(
                  product: product,
                ),
                //Price & sale price
                ProductMetaData(
                  product: product,
                ),
                //Attributes
                ProductAttributes(
                  product: product,

                
                ),
                 const SizedBox(height: AppSize.spacebtwSections,),
                  //Checkout Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      child:const Text('Checkout')
                       ,onPressed: (){},),
                  ),
              ]),
            ),

            //
          ],
        ),
      ),
    );
  }
}
