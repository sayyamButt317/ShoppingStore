/* import 'package:flutter/material.dart';
import '../model/product.dart';




class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({super.key, required this.product, required this.press});

  

  @override
  Widget build(BuildContext context) {
    return Column(
      children:[
        Container(
          height:180,
          width:160,decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(16),
          ),
          child:Image.network(
            data[index]["image"],
            /* height: 125, // Adjust image height within the Card
            width: 120, */
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}  */