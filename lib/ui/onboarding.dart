import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/src/extensions/widget_extensions.dart';
import 'package:zouse/ui/create_account.dart';
import 'package:zouse/ui/get_started.dart';
import 'package:zouse/ui/login.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(onBoardingBG,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            ),
            Column(
               mainAxisAlignment: MainAxisAlignment.end,
               crossAxisAlignment: CrossAxisAlignment.center,
              children: [

               Text(onboadingHeader,
                   style: primaryTextStyle(
                     size: 30,
                     color: secondaryTextColor,
                       weight: FontWeight.w800,
                       fontFamily: fontManrope
                   ),
               ),
                5.height,
                Text(onboardingSubhead,
                  textAlign: TextAlign.center,
                  style: primaryTextStyle(
                      size: 16,
                      color: secondaryTextColor,
                      weight: FontWeight.w600,
                      fontFamily: fontManrope
                  ),
                ),
                35.height,
                CommonButton(text: onboardingBtnText1, onPressed: (){
                  finish(context);
                  CreateAccount().launch(context);
                }).paddingSymmetric(horizontal: 15.0),
                16.height,
                TransparentButton(text: onboardingBtnText2, onPressed: (){
                  Login().launch(context);
                  //finish(context);
                }).paddingSymmetric(horizontal: 15.0),
                35.height,
              ],
            )
          ],
        )
      ),
    );
  }
}
