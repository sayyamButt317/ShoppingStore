import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoppingstore/Pages/HomeScreen/Widget/Container/circularcontainer.dart';
import '../../../Helper/Color/colors.dart';
import '../Widget/curved edge/CurvedEdgeWidget.dart';
import '../Widget/Container/primaryheadcontainer.dart';
import '../Widget/curved edge/curvededge.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          curvedEdgeWidget(),
        ],
      ),
    ));
  }
}

