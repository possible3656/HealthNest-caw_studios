import 'package:caw_studios/app/modules/UI/innerPage/controllers/inner_page_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/Constants.dart';

class InnerPageAppBar extends GetView<InnerPageController> {
  const InnerPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return        Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: (()=>controller.onBackPressed()),
          child: Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Icon(
              Icons.keyboard_arrow_left,
              color: Constants.primaryTextColor,
              size: 32,
            ),
          ),
        ),
        Text(
          controller.title,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xff535a63),
            fontSize: 20,
            fontFamily: "Inter",
            fontWeight: FontWeight.w700,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: Colors.transparent,
            size: 32,
          ),
        ),
      ],
    );
  }
}
