import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/src/extensions/context_extensions.dart';
import 'package:nb_utils/src/extensions/int_extensions.dart';
import 'package:zouse/ui/create_new_password.dart';
import 'package:zouse/ui/otp_verification.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: commonAppbar(
              startIcon: Icons.arrow_back_ios,
              title: resetPasswordHeader),
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
                  Text(resetPasswordSubhead,
                    style: primaryTextStyle(size: 18, weight: FontWeight.w300),
                  ),
                  45.height,
                  AppTextField(
                    decoration: fieldInputDecoration(
                        hint: email,
                        prefixIcon: Icons.email_outlined
                    ),
                    textFieldType: TextFieldType.EMAIL,
                    keyboardType: TextInputType.emailAddress,),
                  188.height,
                  CommonButton(text: sendBtnText, onPressed: (){
                    OtpVerification().launch(context);
                  })

                ],
              ),
            ),
          ),

    ));
  }
}
