import 'package:caw_studios/app/data/Constants.dart';
import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/post_tag_chip.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../../data/GlobalWidgets/SvgImage.dart';

class HomeFeedHeader extends GetView<FeedPageController> {
  const HomeFeedHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top/User
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "COMMUNITY",
                      style: TextStyle(
                        color: Color(0xffa5b1c2),
                        fontSize: 12,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1,
                      ),
                    ),
                    Text(
                      "All Communities",
                      style: TextStyle(
                        color: Color(0xff00a981),
                        fontSize: 16,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 15),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      color: Constants.secondaryTextColor,
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(
                          image: AssetImage('assets/images/person1.png'),
                          fit: BoxFit.cover)),
                ),
              ],
            ),
            //search and notification
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 35,
                      decoration: BoxDecoration(
                          border: Border.all(color: const Color(0xffCCEEE6))),
                      child: TextField(
                        controller: controller.searchTextController.value,
                        style: TextStyle(
                          color: Constants.primaryTextColor,
                          fontSize: 14,
                        ),
                        cursorColor: Constants.primaryTextColor,
                        decoration: InputDecoration(
                            focusedBorder: InputBorder.none,
                            border: InputBorder.none,
                            hintText: "Search posts and members",
                            hintStyle: TextStyle(
                              color: Constants.secondaryTextColor,
                              fontSize: 14,
                            ),
                            suffixIcon: const Padding(
                              padding: EdgeInsets.all(5),
                              child: SvgImage(
                                assets: 'assets/images/search.svg',
                                height: 24,
                                width: 24,
                              ),
                            )),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: SvgImage(assets: 'assets/images/bell.svg'),
                  )
                ],
              ),
            ),
            //feed/post tag
            SizedBox(
              height: 30,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.tags.length,
                  itemBuilder: (ctx, index) {
                    return Obx(() => InkWell(
                          onTap: (() => controller.onTagChipPressed(index)),
                          child: PostTagChip(
                              text: controller.tags[index],
                              selected: controller.isTagSelected(index)),
                        ));
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
