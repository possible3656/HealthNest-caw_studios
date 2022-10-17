import 'package:caw_studios/app/data/GlobalWidgets/MagicScroll.dart';
import 'package:caw_studios/app/modules/Onboarding/signUpPage/views/widgets/logo_and_title.dart';
import 'package:caw_studios/app/modules/Onboarding/signUpPage/views/widgets/mobile_field.dart';
import 'package:caw_studios/app/modules/Onboarding/signUpPage/views/widgets/text_and_sendotp_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/sign_up_page_controller.dart';

class SignUpPageView extends GetView<SignUpPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          LogoAndTitle(),
          Padding(
            padding: EdgeInsets.only(top: 50, bottom: 30),
            child: MobileField(),
          ),
          TextAndSendOtpButton()
        ],
      ),
    );
  }
}
