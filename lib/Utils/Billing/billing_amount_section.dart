import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //Sub Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'SubTotal',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$256.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
         const SizedBox(height:AppSize. spacebtwItems/2),

         //shipping fee. 
             Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Shipping Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
         const SizedBox(height:AppSize. spacebtwItems/2),
         //Tax fee
                 Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Tax Fee',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$6.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
          const SizedBox(height:AppSize. spacebtwItems/2),
          //Order Total
                   Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              ' Order Total',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Text('\$6.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
