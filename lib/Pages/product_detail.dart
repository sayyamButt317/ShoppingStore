import 'dart:ui';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    Key? key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productDescription,
  }) : super(key: key);

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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                color: Colors.white70,
                child: Center(
                  child: Image.network(widget.productImage),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.54,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.4),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                    border: Border.all(
                      width: 1,
                      color: Colors.black.withOpacity(0.2),
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.productName,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                '\$ ${widget.productPrice} ',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),

                            ),

                          ],
                        ),
                        const Text(
                          "Description",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          widget.productDescription,style:  const TextStyle(color: Colors.grey,fontSize: 10),
                        ),
                        const Text("Choose Size")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
