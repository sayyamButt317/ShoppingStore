import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedBuilder(
                animation: animationController,
                builder: (_, child) {
                  return Transform.translate(
                    offset: Offset(-0.5 * animationController.value, 0.0),
                    child: Image.asset(
                      "images/intro0.png",
                      width: 100,
                      height: 100,
                    ),
                  );
                },
              ),
              const SizedBox(width: 8), // Adjust the width as needed
              SlideTransition(
                position: textAnimation,
                child: const Text(
                  "Go Blind",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
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
