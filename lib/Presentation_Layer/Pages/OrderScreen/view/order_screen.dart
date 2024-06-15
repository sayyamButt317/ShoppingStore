import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Widgets/custom_appbar/appbar.dart';

class OrderScreen extends StatelessWidget{
  const OrderScreen(Key? key): super(key:key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //AppBar
      appBar:CustomAppBar(
        title:Text("My Orders",
        style:Theme.of(context).textTheme.headlineSmall),
        ),
      body:const Padding(
       padding:EdgeInsets.all(AppSize.defaultSpacing),

       //Orders
   
      ),
    );
  }
}