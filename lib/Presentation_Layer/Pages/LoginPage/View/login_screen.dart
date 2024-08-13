import 'package:flutter/material.dart';
import 'package:shoppingstore/Utils/Helperfunction/helper.dart';
import 'package:shoppingstore/Utils/ImagesLink/imagestring.dart';
import 'package:shoppingstore/Utils/Sizes/app_size.dart';
import 'package:shoppingstore/Utils/Style/spacing_style.dart';
import 'package:shoppingstore/Utils/Text/statictext.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
 

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.boolIsDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child:  Padding(
          padding: SpacingStyle.paddingwithAppBarHeight,
          child: Column(
            children:[
              //Logo ,Title & subtitle

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Image(
                    height:100,
                    image: AssetImage(dark ? ImageLink.lightmodelogo : ImageLink.darkmodelogo),
                  ),
                  Text(AppStaticText.loginTitle,style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: AppSize.sm),
                  
                  Text(AppStaticText.loginSubTitle,style: Theme.of(context).textTheme.bodyMedium)
                ]
              ),

              //Form

          Form(
            child:Padding(
              padding: const EdgeInsets.symmetric(vertical:AppSize.spacebtwSections),
            child:Column(
              children: [ 
                //Email
                TextFormField(
                  decoration:  const InputDecoration(
                    prefixIcon: Icon(
                      Iconsax.direct_right)
                      ,label: Text(AppStaticText.email)),
                ),
                const SizedBox(height: AppSize.sm),
                //Password
                TextFormField(
                  decoration:  const InputDecoration(
                    prefixIcon: Icon(Iconsax.lock),
                    label: Text(AppStaticText.password),
                    suffixIcon:Icon(Iconsax.eye_slash)),
                ),
                 const SizedBox(height:AppSize.spacebtwInputFeilds/2),

                 //Remember Me & Forget Password 
                 Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                   children: [
                     Row(
                      children: [
                       Checkbox(value: true, onChanged: (value){}),
                       const Text(AppStaticText.rememberMe)
                      ],
                     ),
                                      //Forget Password
                 TextButton(onPressed: (){},child:const Text(AppStaticText.forgetPassword)),
                   ],
                 ),
                 const SizedBox(height: AppSize.spacebtwSections),

                 //SignIn Button
                 SizedBox(
                  width:double.infinity,
                  child:ElevatedButton(
                    onPressed: (){},
                    child:const Text(AppStaticText.signIn)
                    ),
                    ),

                 //Create Account Button
                   SizedBox(
                  width:double.infinity,
                  child:OutlinedButton(
                    onPressed: (){},
                    child:const Text(AppStaticText.createAccount)
                    ),
                    ),

              ],
            )
          ),
          )
            ]
          ),
        ),),
    );
  }
}