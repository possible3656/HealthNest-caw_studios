import 'package:caw_studios/app/data/Constants.dart';
import 'package:caw_studios/app/data/GlobalWidgets/MagicScroll.dart';
import 'package:caw_studios/app/data/GlobalWidgets/SvgImage.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/event_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/home_feed_header.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/normal_post_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/poll_post_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/question_post_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/feed_page_controller.dart';

class FeedPageView extends GetView<FeedPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
        bottomNavigationBar: Container(
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
                      SvgImage(
                        assets: 'assets/images/feed.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
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
                      SvgImage(
                        assets: 'assets/images/library.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
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
                      child: Icon(
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
                      SvgImage(
                        assets: 'assets/images/message.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
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
                      SvgImage(
                        assets: 'assets/images/service.svg',
                        height: 20,
                        width: 20,
                      ),
                      SizedBox(
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
            )),
        paddingEnabled: false,
        bgColor: const Color(0xffF2F2F2),
        child: SingleChildScrollView(
          child: Column(
            children: const [
              HomeFeedHeader(),

              // qusestion  layout
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: QuestionPostView(),
              ),

              // normal    post
              NormalPostView(),

              // event
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: EventView(),
              ),

              //poll
              PollPostView(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
