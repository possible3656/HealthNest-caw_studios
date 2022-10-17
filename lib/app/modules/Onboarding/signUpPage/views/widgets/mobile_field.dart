import 'package:caw_studios/app/modules/Onboarding/signUpPage/controllers/sign_up_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';

class MobileField extends GetView<SignUpPageController> {
  const MobileField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SvgImage(
          assets: 'assets/images/IN.svg',
          height: 20,
          width: 30,
        ),
        const SizedBox(
          width: 5,
        ),
        const SvgImage(
          assets: 'assets/images/expand.svg',
          height: 5,
          width: 5,
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
            child: TextField(
          controller: controller.mobileNumberController.value,
          style: TextStyle(
            color: Constants.primaryTextColor,
            fontSize: 14,
          ),
          cursorColor: Constants.primaryTextColor,
          keyboardType: TextInputType.phone,
          onChanged: ((value) => controller.onMobileTextChange(value)),
          onSubmitted: ((_) => controller.onSendOtpButtonPressed()),
          decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Constants.secondaryTextColor),
              ),
              hintText: "Enter Mobile Number",
              hintStyle: TextStyle(
                color: Constants.secondaryTextColor,
                fontSize: 14,
              ),
              suffixIcon: const Padding(
                padding: EdgeInsets.all(10),
                child: SvgImage(
                  assets: 'assets/images/phone.svg',
                  height: 24,
                  width: 24,
                ),
              )),
        ))
      ],
    );
  }
}
