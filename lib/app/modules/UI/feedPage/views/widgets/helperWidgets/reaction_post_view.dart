import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../data/GlobalWidgets/SvgImage.dart';

class ReactionPostView extends GetView<FeedPageController> {
  const ReactionPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SvgImage(
                assets: 'assets/images/empty_question.svg',
              ),
              SizedBox(width: 2),
              Text(
                "24",
                style: TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 12,
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              SvgImage(
                assets: 'assets/images/comment-lines.svg',
              ),
              SizedBox(width: 2),
              Text(
                "24",
                style: TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 12,
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(5),
          child: SvgImage(
            assets: 'assets/images/bookmark.svg',
          ),
        ),
        InkWell(
          onTap: (() => controller.onShareButtonPressed(context)),
          child: const Padding(
            padding: EdgeInsets.all(5),
            child: SvgImage(
              assets: 'assets/images/share.svg',
            ),
          ),
        ),
      ],
    );
  }
}
