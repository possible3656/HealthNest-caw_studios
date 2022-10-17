import 'package:caw_studios/app/data/GlobalMethods.dart';
import 'package:caw_studios/app/routes/app_pages.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpPageController extends GetxController {
  var mobileNumberController = TextEditingController().obs;

  var buttonEnabled = false.obs;

  void onMobileTextChange(String value) {
    buttonEnabled.value = value.trim().length > 9;
  }

  onSendOtpButtonPressed() {
    if (!buttonEnabled.value) {
      GlobalMethods.showSnackBar("Please enter your 10 digit mobile number.");
      return;
    }
    Get.toNamed(Routes.FEED_PAGE);
  }
}
