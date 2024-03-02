import 'package:flutter/cupertino.dart';

import '../../../../Helper/Color/colors.dart';
import 'circularcontainer.dart';
import '../curved edge/CurvedEdgeWidget.dart';

class PrimaryHeadContainer extends StatelessWidget {
  const PrimaryHeadContainer({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return curvedEdgeWidget(
      child: Container(
        color: AppColor.primaryColor,
        padding: const EdgeInsets.all(0),
        child: Stack(
          children: [
            Positioned(
                top: -150,
                right: -250,
                child: CircularContainer(
                  backgroundColor: AppColor.textWhite.withOpacity(0.1),
                )),
            Positioned(
                top: 100,
                bottom: -300,
                child: CircularContainer(
                  backgroundColor: AppColor.textWhite.withOpacity(0.1),
                )),
           child,
          ],
        ),
      ),
    );
  }
}
