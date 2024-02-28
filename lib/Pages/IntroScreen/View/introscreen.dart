import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoppingstore/Pages/home.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../Widgets/introview.dart';
import '../Model/intromodel.dart';
import 'package:get/get.dart';

class IntroductionScreen extends StatelessWidget {
  IntroductionScreen({super.key});

  static PageController pageController = PageController(initialPage: 0);
  List<IntroModel> introPageList = ([
    IntroModel("Easy Buying", "", "images/intro1.png"),
    IntroModel("Quick Shipping", "", "images/intro2.png"),
    IntroModel("Happy Customer ", "", "images/intro3.png"),
  ]);

  var currentShowIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(children: [
        SizedBox(
          height: MediaQuery.of(context).padding.top,
        ),
        Expanded(
          child: PageView(
            controller: pageController,
            pageSnapping: true,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (index) {
              currentShowIndex = index;
            },
            scrollDirection: Axis.horizontal,
            children: [
              IntroView(introModel: introPageList[0]),
              IntroView(introModel: introPageList[1]),
              IntroView(introModel: introPageList[2]),
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: introPageList.length,
          effect: SlideEffect(
              dotColor: Colors.grey,
              activeDotColor: Theme.of(context).primaryColor),
          onDotClicked: (index) {},
        ),
        Padding(
          padding:
              const EdgeInsets.only(left: 48, right: 48, bottom: 32, top: 32),
          child: Container(
            height: 48,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).disabledColor.withOpacity(0.2),
                  blurRadius: 8,
                  offset: const Offset(4, 4),
                )
              ],
            ),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => Get.to(() => const MyHomePage()),
                  borderRadius: BorderRadius.circular(24),
                  child: const Center(
                      child: Text("Shop Now",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          )))),
            ),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).padding.bottom,
        )
      ]),
    );
  }
}
