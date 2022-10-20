import 'package:flutter/material.dart';

import '../../../../../data/Constants.dart';
import '../../../../../data/GlobalWidgets/DividerView.dart';
import '../../../../../data/GlobalWidgets/SvgImage.dart';

class PostReplyView extends StatelessWidget {
  final String username, time,subtitle;
  final String? replies, asset;
  final bool influencer;

  const PostReplyView(
      {Key? key,
      required this.username,
      required this.time,
      this.replies,
      this.asset,
      required this.influencer, required this.subtitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 25,
            width: 25,
            decoration: BoxDecoration(
                color: Colors.primaries[8],
                borderRadius: BorderRadius.circular(20)),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
              child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: Constants.primaryTextColor.withOpacity(.1))),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "$username   ·  $time min",
                            style: const TextStyle(
                              color: Color(0xff535a63),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              if (influencer)
                                Container(
                                  decoration: BoxDecoration(
                                      color: Constants.primaryGreenColor
                                          .withOpacity(.1),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 5),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Constants.primaryGreenColor,
                                          size: 14,
                                        ),
                                        const SizedBox(width: 3),
                                        Text(
                                          "INFLUENCER",
                                          style: TextStyle(
                                            color: Constants.primaryGreenColor,
                                            fontSize: 10,
                                            fontFamily: "Proxima Nova",
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              if (influencer)  const SizedBox(width: 15),
                              Text(
                               subtitle,
                                style: TextStyle(
                                  color: Constants.primaryGreenColor,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Icon(
                        Icons.more_vert,
                        color: Constants.primaryTextColor,
                      )
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      "Not sure about rights. Looks like its a matter of concern that our schools don’t take it seriously such matters and treat it so lightly like its a fault of the student.",
                      style: TextStyle(
                        color: Color(0xff535a63),
                        fontSize: 14,
                      ),
                    ),
                  ),
                 if(asset!=null) Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 150,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Constants.primaryGreenColor.withOpacity(.3),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  const DividerView(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SvgImage(
                              assets: 'assets/images/vote_up.svg',
                            ),
                            SizedBox(width: 7),
                            Text(
                              "10",
                              style: TextStyle(
                                color: Color(0xff00a981),
                                fontSize: 12,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            SvgImage(
                              assets: 'assets/images/vote_down.svg',
                            ),
                            SizedBox(width: 6),
                            Text(
                              "4",
                              style: TextStyle(
                                color: Color(0xff535a63),
                                fontSize: 12,
                                fontFamily: "Proxima Nova",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        const SvgImage(assets: 'assets/images/share.svg'),
                        const Text(
                          "Reply",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff00a981),
                            fontSize: 16,
                            fontFamily: "Proxima Nova",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (replies != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "$replies replies",
                        style: const TextStyle(
                          color: Color(0xff00a981),
                          fontSize: 12,
                        ),
                      ),
                    )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
