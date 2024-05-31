import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/add_remove_btn.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/Widget/cart_item.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/shop/price/product_price.dart';

class CartItemListView extends StatelessWidget {
  const CartItemListView({
    super.key, 
     this.showAddRemoveButton = true,
  });
final bool showAddRemoveButton;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => const SizedBox(
        height: AppSize.spacebtwSections,
      ),
      shrinkWrap: true,
      itemCount: 7,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (_, index) =>  Column(
        children: [
          const CartItem(),
          if(showAddRemoveButton) const SizedBox(
            height: AppSize.spacebtwItems,
          ),
           if(showAddRemoveButton)
           //Add remove button with total price 
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                  SizedBox(width:70),
                    //Add Remove Button
              AddOrRemoveBtn(),
              ],),
              //Product Total Price
              ProductPriceText(price: '250')
            ],
          ),
        ],
      ),
    );
  }
}