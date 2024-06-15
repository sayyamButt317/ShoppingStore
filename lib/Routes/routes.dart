import 'package:flutter/material.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/CartScreen/View/cart_screen.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/HomeScreen/View/homescreen.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/OnBoarding/View/onboardingscreen.dart';
import 'package:shoppingstore/Presentation_Layer/Pages/Store_Screen/view/product_store.dart';
import 'package:shoppingstore/Routes/rooute_name.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case RouteName.SPLASH_SCREEN:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case RouteName.LOGIN_SCREEN:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case RouteName.SIGNUP_SCREEN:
        return MaterialPageRoute(builder: (_) => const StoreScreen());
      case RouteName.CART_SCREEN:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      //       case RouteName.PRODUCT_SCREEN:
      // return MaterialPageRoute(builder: (_) =>  ProductDetail(product: product));

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
              body: Center(
            child: Text("No Route defined for ${settings.name}"),
          ));
        });
    }
  }
}
