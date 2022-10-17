import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/reaction_score.dart';
import 'package:caw_studios/app/modules/UI/feedPage/views/widgets/helperWidgets/top_element_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';
import 'helperWidgets/reaction_post_view.dart';

class QuestionPostView extends StatelessWidget {
  const QuestionPostView({super.key});

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
              name: 'rohit12',
              tag: 'DIET',
              time: '1min',
              type: 'Asked a question',
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Text(
                "What are the signs and symptoms of skin cancer?",
                style: TextStyle(
                  color: Color(0xff535a63),
                  fontSize: 16,
                  fontFamily: "Proxima Nova",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Text(
              "I’ve been facing a few possibble symptoms of skin cancer. I’ve googled the possibilities but i thought i’d ask the community inste...See More",
              style: TextStyle(
                color: Color(0xff535a63),
                fontSize: 14,
              ),
            ),
            SizedBox(height: 14),
            Text(
              "Peninsula Park, Andheri, Mumbai",
              style: TextStyle(
                color: Color(0xff00a981),
                fontSize: 10,
              ),
            ),
            ReactionScore(title: '24 member have this question'),
            ReactionPostView()
          ],
        ),
      ),
    );
  }
}
