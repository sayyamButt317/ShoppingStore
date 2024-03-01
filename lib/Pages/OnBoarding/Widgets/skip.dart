import 'package:flutter/material.dart';
import 'package:shoppingstore/Helper/Devicesize/deviceutils.dart';
import 'package:shoppingstore/Helper/Sizes/Size.dart';

class Skipbtn extends StatelessWidget {
  const Skipbtn({super.key});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: DeviceUtils.appBarHeight(),
        right: Size.defaultSpacing,
        child: TextButton(onPressed: () {}, child: const Text("Skip")));
  }
}
