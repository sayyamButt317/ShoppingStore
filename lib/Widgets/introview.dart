import 'package:flutter/material.dart';

import '../Pages/IntroScreen/Model/intromodel.dart';


class IntroView extends StatelessWidget {
  final IntroModel introModel;
  const IntroView({super.key, required this.introModel});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        flex: 8,
        child: Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width - 120,
                child: AspectRatio(
                    aspectRatio: 1,
                    child: Image.asset(
                      introModel.assetImage,
                      fit: BoxFit.fill,
                    )))),
      ),
      Expanded(
        child: Text(introModel.titleText,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            )),
      ),
      const Expanded(flex: 1, child: SizedBox()),
    ]);
  }
}
