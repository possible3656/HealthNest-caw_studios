import 'package:caw_studios/app/data/GlobalWidgets/MagicScroll.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/bottom_sheet_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/event_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/home_feed_header.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/normal_post_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/poll_post_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/post_tag_chip.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/question_post_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../controllers/feed_page_controller.dart';

class FeedPageView extends GetView<FeedPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
        bottomNavigationBar: const BottomSheetView(),
        paddingEnabled: false,
        bgColor: const Color(0xffF2F2F2),
        child:SingleChildScrollView(
              child: Column(
                children: const [
                  HomeFeedHeader(),

                  /**
                   * ! separate layout has been made for question post, normal post, events post, poll post
                   * ! these can be inflate according to type of post by making a field type_post and by looking at type we can inflate which is required
                   */

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
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: PollPostView(),
                  ),
                ],
              ),
            ));
  }
}
