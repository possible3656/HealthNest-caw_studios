import 'package:caw_studios/app/data/GlobalWidgets/SvgImage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../data/Constants.dart';

class FeedPageController extends GetxController {
  var searchTextController = TextEditingController().obs;
  List tags = [
    'All posts',
    'News',
    'Diets',
    'Lifestyle',
    'Symptoms',
    'Treatment'
  ];
  RxInt selectedIndex = 0.obs;

  bool isTagSelected(int index) {
    return selectedIndex.value == index;
  }

  onTagChipPressed(int index) {
    selectedIndex.value = index;
  }

  onShareButtonPressed(BuildContext context) {
    debugPrint('share button pressed');
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: SizedBox(
              height: 290,
              child: Column(
                children: [
                  Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: const Color(0xffd1d8e0),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Share post",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff535a63),
                        fontSize: 14,
                        fontFamily: "Inter",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      children: const [
                        SvgImage(assets: 'assets/images/send.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Send as a private message",
                          style: TextStyle(
                            color: Color(0xff535a63),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: const [
                          SvgImage(assets: 'assets/images/share_sheet.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Share as a post",
                            style: TextStyle(
                              color: Color(0xff535a63),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Constants.dividerColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: Row(
                        children: const [
                          SvgImage(assets: 'assets/images/fb_logo.svg'),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Share on Facebook",
                            style: TextStyle(
                              color: Color(0xff535a63),
                              fontSize: 14,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Row(
                      children: const [
                        SvgImage(assets: 'assets/images/wa_logo.svg'),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Share on WhatsApp",
                          style: TextStyle(
                            color: Color(0xff535a63),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  onMoreButtonPressed(BuildContext context) {
    debugPrint('more button pressed');
    showModalBottomSheet(
        context: context,
        builder: (context) => SizedBox(
              height: 240,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Container(
                      width: 50,
                      height: 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color(0xffd1d8e0),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        child: moreViewItems('assets/images/eye_close.svg',
                            'Hide <Post type>', 'See fewer posts like this')),
                    moreViewItems('assets/images/user_times.svg',
                        'Unfollow <username>', 'See fewer posts like this'),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: moreViewItems('assets/images/exclaim_circle.svg',
                          'Report <Post-type>', 'See fewer posts like this'),
                    ),
                    moreViewItems('assets/images/link.svg',
                        'Copy <Post_type> link', 'See fewer posts like this'),
                  ],
                ),
              ),
            ));
  }

  Widget moreViewItems(String assets, title, subtitle) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgImage(assets: assets),
          const SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 14,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: const TextStyle(
                  color: Color(0xffa5b1c2),
                  fontSize: 10,
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  onAddPostButtonPressed(BuildContext context) {
    debugPrint('add post');
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
                color: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: returnAddPostItem(
                                  'assets/images/edit.svg',
                                  'Create a post',
                                  'Share your thoughts with the community')),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: returnAddPostItem(
                                  'assets/images/question.svg',
                                  'Ask a question',
                                  'Any doubt? Ask community')),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: returnAddPostItem('assets/images/poll.svg',
                                  'Start a poll', 'Need opinion of many?')),
                          Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: returnAddPostItem(
                                  'assets/images/event.svg',
                                  'Organise an event',
                                  'Start a meet with people to share joy')),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      height: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: (() => Get.back()),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Constants.primaryGreenColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Icon(
                                  CupertinoIcons.multiply,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }

  returnAddPostItem(String assets, title, subtitle) {
    return Row(
      children: [
        SvgImage(assets: assets),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: Color(0xff00a981),
                    fontSize: 14,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Color(0xffa5b1c2),
                    fontSize: 10,
                  ),
                )
              ],
            ),
          ),
        ),
        Icon(Icons.keyboard_arrow_right)
      ],
    );
  }
}
