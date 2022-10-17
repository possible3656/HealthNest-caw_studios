import 'package:caw_studios/app/modules/Onboarding/signUpPage/controllers/sign_up_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/Constants.dart';

class TextAndSendOtpButton extends GetView<SignUpPageController> {
  const TextAndSendOtpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            "We never compromise on security!\nHelp us create a safe place by providing your mobile number to maintain authenticity.",
            style: TextStyle(
              color: Constants.secondaryTextColor,
              fontSize: 12,
            ),
          ),
        ),
        const SizedBox(height: 50),
        Obx(
          () => InkWell(
            onTap: (()=>controller.onSendOtpButtonPressed()),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2),
                color: controller.buttonEnabled.value
                    ? Color(0xff00A981)
                    : Color(0xffe8ebef),
              ),
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Send OTP",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: controller.buttonEnabled.value
                          ? Colors.white
                          : Constants.secondaryTextColor,
                      fontSize: 16,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
