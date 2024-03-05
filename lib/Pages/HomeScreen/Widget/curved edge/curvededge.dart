import 'package:flutter/cupertino.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
Path getClip(Size size){
  var path =Path();
  path.lineTo(0,size.height);

  final firstCurve = Offset(0,size.height-20);
  final lastCurve = Offset(30,size.height-20);
  path.quadraticBezierTo(firstCurve.dx, firstCurve.dy, lastCurve.dx, lastCurve.dy);

  final secondFirstCurve = Offset(0,size.height-20);
  final secondLastCurve = Offset(size.width-30,size.height-20);
  path.quadraticBezierTo(secondFirstCurve.dx, secondFirstCurve.dy, secondLastCurve.dx, secondLastCurve.dy);


  final lastFirstCurve = Offset(size.width,size.height-20);
  final lastSecondCurve = Offset(size.width,size.height);
  path.quadraticBezierTo(lastFirstCurve.dx, lastFirstCurve.dy, lastSecondCurve.dx, lastSecondCurve.dy);

  path.lineTo(size.width,0);
  path.close();
  return path;

}
  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();


  }

  }

