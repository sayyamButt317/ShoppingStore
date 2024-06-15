import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shoppingstore/Widgets/bottom_navigationbar/bottomnavigation.dart';



class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update current index when page scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  //jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  //update current index and jump to next index
  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.to(() => const BottomNavigation());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

//update currentindex and jump to lastpage
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpTo(2);
  }
}
