import 'package:caw_studios/app/data/GlobalMethods.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/poll_container.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/reaction_post_view.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/reaction_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';
import 'helperWidgets/top_element_view.dart';

class PollPostView extends StatelessWidget {
  const PollPostView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopElementView(
              name: 'sambhavjain',
              tag: 'DIET',
              time: '1min',
              type: 'Created a poll',
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Text(
                "What’s the best Hospital in India for cancer?",
                style: TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 16,
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Column(
              children: const [
                PollContainer(
                    percentage: 20, title: 'Apollo Hospital, Bangalore'),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: PollContainer(percentage: 30, title: 'AIMMS, Delhi'),
                ),
                PollContainer(
                    percentage: 50,
                    title:
                        'Kokilaben Dhirubhai Ambani Hospital & Medical Research Institute, Mumbai')
              ],
            ),
            const SizedBox(height: 14),
            const Text(
              "203 votes  •  Poll Ended",
              style: TextStyle(
                color: Color(0xffa5b1c2),
                fontSize: 14,
              ),
            ),
            ReactionScore(
              title: 'you and 23 other liked this poll',
            ),
            ReactionPostView()
          ],
        ),
      ),
    );
  }
}
