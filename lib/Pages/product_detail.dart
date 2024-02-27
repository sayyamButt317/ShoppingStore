import 'dart:ui';

import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productDescription,
  });

  final String productName;
  final String productPrice;
  final String productImage;
  final String productDescription;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,

                  color: Colors.grey.withOpacity(0.1),
                  child: Center(
                    child: Image.network(widget.productImage),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.529,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius:const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  border: Border.all(
                    width: 3,
                    color: Colors.green,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    widget.productName,
                    style: const TextStyle(
                      fontSize: 22,fontWeight: FontWeight.bold
                    ),
                  ),
                ),

              )

           ],
        ),
      ),
      ),
    );
  }
}
