import 'package:flutter/cupertino.dart';

class CurvedEdges extends CustomClipper<Path> {
  @override
Path getClip(Size size){
  var path =Path();
  path.lineTo(0,size.height);

  final firstcurve = Offset(0,size.height-20);
  final lastcurve = Offset(30,size.height-20);
  path.quadraticBezierTo(firstcurve.dx, firstcurve.dy, lastcurve.dx, lastcurve.dy);

}
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();


  }

  }

