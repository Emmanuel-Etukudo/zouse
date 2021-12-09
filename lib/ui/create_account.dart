import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:zouse/utils/assets.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: primaryColor,
          leading: Container(
            margin: EdgeInsets.all(8),
            decoration: boxDecorationWithRoundedCorners(
              backgroundColor: primaryColor,
            ),
            child: Icon(
              Icons.close,
              color: smallButtonsColor,
            ),
          ).onTap(() {
            finish(context);
          }),
          title: Image.asset(appBarLogo),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Container(
          height: context.height(),
          width: context.width(),
          color: primaryColor,
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.height,
                Text(
                  createAccountHeader,
                  style: primaryTextStyle(
                    size: 25,
                    weight: FontWeight.w500,
                  ),
                ),
                8.height,
                Text(
                  createAccountSubhead,
                  style: primaryTextStyle(size: 18, weight: FontWeight.w300),
                ),
                44.height,
                AppTextField(
                  decoration: fieldInputDecoration(
                    hint: fullName,
                    prefixIcon: Icons.person_outlined
                  ),
                  textFieldType: TextFieldType.NAME,
                keyboardType: TextInputType.name,),
                32.height,
                AppTextField(
                  decoration: fieldInputDecoration(
                      hint: email,
                      prefixIcon: Icons.email_outlined
                  ),
                  textFieldType: TextFieldType.EMAIL,
                  keyboardType: TextInputType.emailAddress,),
                32.height,
                AppTextField(
                  decoration: fieldInputDecoration(
                      hint: password,
                      prefixIcon: Icons.lock_outlined
                  ),
                  textFieldType: TextFieldType.PASSWORD,
                  keyboardType: TextInputType.visiblePassword,
                suffixIconColor: primaryDarkColor,),
                32.height,
                AppTextField(
                  decoration: fieldInputDecoration(
                      hint: confirmPassword,
                      prefixIcon: Icons.lock_outlined
                  ),
                  textFieldType: TextFieldType.PASSWORD,
                  keyboardType: TextInputType.visiblePassword,
                suffixIconColor: primaryDarkColor,),
                44.height,
                CommonButton(text: createAccountHeader, onPressed: (){

                }),
                14.height,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(alreadyHave, style: primaryTextStyle(
                      size: 16,
                      color: primaryTextColor,
                    ),
                    ),
                    5.width,
                    Text(createAcctToLogin,
                    style: primaryTextStyle(
                      size: 16,
                      color: secondaryColor
                    ),),
                  ],
                ),
                29.height,
                dividerDecoration(orContinue, context.width()),
                34.height,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socialAuthButton(faceBooKText, Image.asset(facebookIcon)),
                    33.width,
                    socialAuthButton(googleText, Image.asset(googleIcon)),
                  ],
                ).center(),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
