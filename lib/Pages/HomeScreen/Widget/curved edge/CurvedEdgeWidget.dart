import 'package:flutter/cupertino.dart';

import '../../../../Helper/Color/colors.dart';
import '../Container/circularcontainer.dart';
import 'curvededge.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
