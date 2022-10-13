import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/GlobalWidgets/SvgImage.dart';
import '../controllers/sign_up_page_controller.dart';

class SignUpPageView extends GetView<SignUpPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    width: 75,
                    height: 75,
                    child: SvgImage(assets: 'assets/images/logo.png',height: 20,width: 30,),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Welcome to\nHealthNest",
                    style: TextStyle(
                      color: Color(0xff535a63),
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgImage(assets: 'assets/images/IN.png',height: 20,width: 30,),
                ],
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "We never compromise on security!\nHelp us create a safe place by providing your mobile number to maintain authenticity.",
                      style: TextStyle(
                        color: Color(0xffa5b1c2),
                        fontSize: 12,
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: Color(0xffe8ebef),
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
                            color: Color(0xffa5b1c2),
                            fontSize: 16,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
