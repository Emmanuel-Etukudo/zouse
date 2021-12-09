import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:nb_utils/src/extensions/context_extensions.dart';
import 'package:nb_utils/src/extensions/int_extensions.dart';
import 'package:zouse/ui/get_started.dart';
import 'package:zouse/utils/colors.dart';
import 'package:zouse/utils/strings.dart';
import 'package:zouse/utils/widgets.dart';

class CreateNewPassword extends StatefulWidget {
  const CreateNewPassword({Key? key}) : super(key: key);

  @override
  _CreateNewPasswordState createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      extendBodyBehindAppBar: true,
      appBar: commonAppbar(title: createNewPswdHeader, startIcon: Icons.arrow_back_ios),
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
              Text(createNewPswdSubhead,
                style: primaryTextStyle(size: 18, weight: FontWeight.w300),
              ),
              45.height,
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
              95.height,
              CommonButton(text: sendBtnText, onPressed: (){
                GetStarted().launch(context);
              })

            ],
          ),
        ),
      ),
    ));
  }
}
