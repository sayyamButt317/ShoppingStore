import 'package:flutter/cupertino.dart';

import '../../../../Helper/Color/colors.dart';
import '../Container/circularcontainer.dart';
import 'curvededge.dart';

class curvedEdgeWidget extends StatelessWidget {
  const curvedEdgeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: Container(
        color: AppColor.primaryColor,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
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
                  right: -300,
                  child: CircularContainer(
                    backgroundColor: AppColor.textWhite.withOpacity(0.1),
                  )),

            ],
          ),
        ),
      ),
    );
  }
}
