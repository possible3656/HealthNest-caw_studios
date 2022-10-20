import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';
import 'helperWidgets/reaction_post_view.dart';
import 'helperWidgets/reaction_score.dart';
import 'helperWidgets/top_element_view.dart';

class EventView extends GetView<FeedPageController> {
  const EventView({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (()=>controller.onPostPressed(const EventView(),'Event')),

      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TopElementView(
                    name: 'username1212',
                    tag: '',
                    time: '1min',
                    type: 'Created an event',
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: SizedBox(
                        width: 310,
                        child: Text(
                          "CANCER MEET AT RAJEEV GANDHI NATIONAL PARK",
                          style: TextStyle(
                            color: Constants.primaryTextColor,
                            fontSize: 16,
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                  const Text(
                    "TUE, APR 23, 2019 | 7 PM IST",
                    style: TextStyle(
                      color: Color(0xff535a63),
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      SvgImage(assets: 'assets/images/location.svg'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "RAJEEV GANDHI NATIONAL PARK, MUMBAI",
                        style: TextStyle(
                          color: Color(0xffa5b1c2),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 14),
                ],
              ),
            ),
            Container(
              color: const Color(0xffeefaf9),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Are you going?",
                          style: TextStyle(
                            color: Color(0xff535a63),
                            fontSize: 14,
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 3),
                        Text(
                          "21 people going",
                          style: TextStyle(
                            color: Color(0xff535a63),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xffcceee6),
                              width: 1,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "No",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff00a981),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 13),
                        Container(
                          height: 30,
                          width: 66,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                              color: const Color(0xffcceee6),
                              width: 1,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              "Yes",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xff00a981),
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ReactionScore(
                title: '24 member like this event',
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ReactionPostView(),
            ),
            const SizedBox(
              height: 14,
            )
          ],
        ),
      ),
    );
  }
}
