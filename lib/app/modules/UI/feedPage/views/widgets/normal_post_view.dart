import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/reaction_score.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helperWidgets/reaction_post_view.dart';
import 'helperWidgets/top_element_view.dart';

class NormalPostView extends GetView<FeedPageController> {
  const NormalPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() => controller.onPostPressed(const NormalPostView(),'Post')),
      child: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopElementView(
                name: 'priya321',
                tag: 'DIET',
                time: '1min',
                type: '',
              ),
              const SizedBox(height: 14),
              const Text(
                "I’ve been facing a few possible symptoms of skin cancer. I’ve googled the possibilities but i thought i’d ask the community inste...See More",
                style: TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 14,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                "Peninsula Park, Andheri, Mumbai",
                style: TextStyle(
                  color: Color(0xff00a981),
                  fontSize: 10,
                ),
              ),
              const ReactionScore(
                title: '24 member reacted to this post',
              ),
              const ReactionPostView()
            ],
          ),
        ),
      ),
    );
  }
}
