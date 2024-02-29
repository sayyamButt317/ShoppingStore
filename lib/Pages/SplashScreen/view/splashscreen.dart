import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../OnBoarding/View/onboardingscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late AnimationController slideAnimation;
  late Animation<Offset> offsetAnimation;
  late Animation<Offset> textAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      lowerBound: 0,
      upperBound: 60,
      animationBehavior: AnimationBehavior.normal,
      duration: const Duration(milliseconds: 700),
    );

    animationController.forward();
    slideAnimation = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 700),
    );
    offsetAnimation = Tween<Offset>(
      begin: Offset.zero,
      end: const Offset(-0.5, 0.0),
    ).animate(
      CurvedAnimation(
        parent: slideAnimation,
        curve: Curves.fastOutSlowIn,
      ),
    );

    textAnimation = Tween<Offset>(
      begin: const Offset(-0.5, 0.0),
      end: const Offset(0.2, 0.0),
    ).animate(
      CurvedAnimation(
        parent: slideAnimation,
        curve: Curves.fastOutSlowIn,
      ),
    );

    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        slideAnimation.forward();
      }
    });
    Future.delayed(const Duration(seconds: 4), () {
      // LoginController controller = Get.find<LoginController>();
      // if (controller.auth.currentUser != null) {
      //   Get.offAllNamed(Routes.CHATUSER);
      // } else {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => IntroductionScreen()),
      //   );
      // }
      Get.off(()=> IntroductionScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,

        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: animationController,
                builder: (_, child) {
                  return Transform.translate(
                    offset: Offset(0.3 * animationController.value, 0.0),
                    child: Image.asset(
                      "images/intro0.png",
                      width: 100,
                      height: MediaQuery.of(context).size.height*0.2,
                    ),
                  );
                },
              ),

              SlideTransition(
                position: textAnimation,
                child: const Text(
                  "GoBlind",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
