import 'package:caw_studios/app/data/GlobalWidgets/MagicScroll.dart';
import 'package:caw_studios/app/modules/UI/innerPage/views/widgets/InnerPageBottomNavigationBar.dart';
import 'package:caw_studios/app/modules/UI/innerPage/views/widgets/inner_page_app_bar.dart';
import 'package:caw_studios/app/modules/UI/innerPage/views/widgets/post_reply.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/GlobalWidgets/DividerView.dart';
import '../controllers/inner_page_controller.dart';

class InnerPageView extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
    return MagicScroll(
        paddingEnabled: false,
        bgColor: Colors.white,
        bottomNavigationBar: const InnerPageBottomNavigationBar(),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /**
               * ?   appbar
               */
              const InnerPageAppBar(),
              /**
               * ?divider
               */
              const DividerView(),
              controller.child,


              /**
               * ! we can populate replays by using this view in list view
               */
              const PostReplyView(
                username: 'user1id',
                influencer: true,
                time: '1',
                replies: '2',
                subtitle: "5+ YRS CHAMPION",
              ),
              const PostReplyView(
                username: 'useralnfdaas',
                subtitle: 'DIAGONASED RECENTLY',
                influencer: false,
                time: '3',
                asset: 'someasset',
              ),
              SizedBox(height: 70,)
            ],
          ),
        ));
  }
}
