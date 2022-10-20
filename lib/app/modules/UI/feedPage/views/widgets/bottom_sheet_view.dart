import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';

class BottomSheetView extends GetView<FeedPageController> {
  const BottomSheetView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SvgImage(
                    assets: 'assets/images/feed.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Feed",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.primaryGreenColor,
                      fontSize: 10,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SvgImage(
                    assets: 'assets/images/library.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Library",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.secondaryTextColor,
                      fontSize: 10,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: (() => controller.onAddPostButtonPressed(context)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Constants.primaryGreenColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SvgImage(
                    assets: 'assets/images/message.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Messages",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.secondaryTextColor,
                      fontSize: 10,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SvgImage(
                    assets: 'assets/images/service.svg',
                    height: 20,
                    width: 20,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Services",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Constants.secondaryTextColor,
                      fontSize: 10,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
