import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/src/extensions/context_extensions.dart';
import 'package:nb_utils/src/extensions/int_extensions.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:zouse/ui/create_new_password.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  _OtpVerificationState createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: commonAppbar(title: otpVerificationHeader, startIcon: Icons.arrow_back_ios),
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
              Text(otpVerificationSubhead,
                style: primaryTextStyle(size: 18, weight: FontWeight.w300),
              ),
              70.height,
              Wrap(
                children: [
                  SizedBox(
                    height: 60,
                    child: OTPTextField(
                      length: 4,
                      width: context.width(),
                      fieldWidth: 60,
                      style: primaryTextStyle(
                        size: 32,
                        weight: FontWeight.w700,
                        color: primaryLightTextColor
                      ),
                      fieldStyle: FieldStyle.box,
                      otpFieldStyle: OtpFieldStyle(
                        focusBorderColor: secondaryColor,
                        backgroundColor: primaryColor,
                        enabledBorderColor: primaryDarkColor
                      ),
                      onChanged: (value){},
                      onCompleted: (value){},
                    ),
                  )
                ],
              ),
              24.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(otpDidNot, style: primaryTextStyle(
                    size: 16,
                    color: primaryTextColor,
                  ),
                  ),
                  5.width,
                  Text(otpResend,
                    style: primaryTextStyle(
                        size: 16,
                        color: secondaryColor
                    ),),
                ],
              ),
              130.height,
              CommonButton(text: continueBtnText, onPressed: (){
                CreateNewPassword().launch(context);
              }),
            ],
          ),
        ),
      ),
    ));
  }
}
