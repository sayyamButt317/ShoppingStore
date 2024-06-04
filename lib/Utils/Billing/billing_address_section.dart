import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/section_heading.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeading(
          title: 'Shipping Address',
          buttonTitle: 'Change',
          onPressed: () {},
        ),
        Text('Choose Your Shipping Address',
            style: Theme.of(context).textTheme.bodyLarge),
        const SizedBox(height: AppSize.spacebtwItems / 2),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: AppSize.spacebtwItems),
            Text(
              '+92 324-0149841',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(
          height: AppSize.spacebtwItems / 2,
        ),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: AppSize.spacebtwItems),
            Expanded(
                child: Text(
              'Walton Cantt E-24, Lahore',
              style: Theme.of(context).textTheme.bodyMedium,
              softWrap: true,
            ))
          ],
        )
      ],
    );
  }
}
