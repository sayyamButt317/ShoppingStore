import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import 'package:shoppingstore/Utils/Color/colors.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';

class ProductColorChip extends StatelessWidget {
  const ProductColorChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });
  final String text;
  final bool selected;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    final isColor=HelperFunction.getColor(text) != null;
    return ChoiceChip(
      label:isColor
          ? const SizedBox()
          :  Text(text),
      selected: selected,
      onSelected: (value) {},
      labelStyle: const TextStyle(color: true ? AppColor.white : null),
      avatar: HelperFunction.getColor(text) != null
          ? CircularContainer(
              width: 50,
              height: 50,
              backgroundColor: HelperFunction.getColor(text)!)
          : null,
      shape: const CircleBorder(),
      labelPadding: isColor ? const EdgeInsets.all(0):null,
      padding: isColor ? const EdgeInsets.all(0):null,
      selectedColor:isColor ? Colors.green:null,
      backgroundColor:isColor  ? HelperFunction.getColor(text)!:null,
    );
  }
}
