import 'package:caw_studios/app/data/Constants.dart';
import 'package:caw_studios/app/modules/UI/feedPage/controllers/feed_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TopElementView extends StatelessWidget {
  final FeedPageController controller = Get.find<FeedPageController>();
  final String tag, time, name, type;
  TopElementView(
      {super.key,
      required this.tag,
      required this.time,
      required this.name,
      required this.type});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              tag,
              style: const TextStyle(
                color: Color(0xffa5b1c2),
                fontSize: 12,
                fontFamily: "Proxima Nova",
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              time,
              textAlign: TextAlign.right,
              style: const TextStyle(
                color: Color(0xff535a63),
                fontSize: 12,
              ),
            ),
          ],
        ),
        const SizedBox(height: 14),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xffe8ebef),
                      width: 1,
                    ),
                  ),
                  child: const FlutterLogo(size: 30),
                ),
                const SizedBox(width: 10),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          type,
                          style: TextStyle(
                              fontSize: 12,
                              color: Constants.secondaryTextColor),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const Text(
                      "DIAGNOSED RECENTLY",
                      style: TextStyle(
                        color: Color(0xff00a981),
                        fontSize: 10,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            InkWell(
              onTap: (() => controller.onMoreButtonPressed(context)),
              child: const Padding(
                padding: EdgeInsets.all(5),
                child: Icon(Icons.more_vert),
              ),
            )
          ],
        )
      ],
    );
  }
}
