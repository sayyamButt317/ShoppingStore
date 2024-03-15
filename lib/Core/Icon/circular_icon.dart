import 'package:flutter/cupertino.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    required this.dark,
  });

  final double? width,height;

  @override
  Widget build(BuildContext context) {
  return Container(
  decoration: BoxDecoration(
  borderRadius: BorderRadius.circular(100),
  color: dark
  ? AppColor.black.withOpacity(0.9)
      : AppColor.white.withOpacity(0.9),
  ),
  child: IconButton(
  onPressed: () {}, icon: const Icon(Iconsax.heart5)),
  );
  }
}
