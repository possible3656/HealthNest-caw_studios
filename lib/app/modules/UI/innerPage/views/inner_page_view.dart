import 'package:caw_studios/app/data/Constants.dart';
import 'package:caw_studios/app/data/GlobalWidgets/MagicScroll.dart';
import 'package:caw_studios/app/data/GlobalWidgets/SvgImage.dart';
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              /**
               * ?   appbar
               */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Constants.primaryTextColor,
                      size: 32,
                    ),
                  ),
                  Text(
                    controller.title,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Color(0xff535a63),
                      fontSize: 20,
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Icon(
                      Icons.keyboard_arrow_left,
                      color: Colors.transparent,
                      size: 32,
                    ),
                  ),
                ],
              ),
              /**
               * ?divider
               */
            const DividerView(),
              controller.child,
              Padding(
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
                    const SizedBox(width: 10,),
                    Expanded(
                        child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(color: Constants.primaryTextColor.withOpacity(.1))),
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
                                    const Text(
                                      "username1275   ·  1min",
                                      style: TextStyle(
                                        color: Color(0xff535a63),
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Row(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Constants.primaryGreenColor.withOpacity(.1),
                                            borderRadius: BorderRadius.circular(20)
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Icon(Icons.star,color: Constants.primaryGreenColor,size: 14,),
                                                const SizedBox(width: 3),
                                                Text(
                                                  "INFLUENCER",
                                                  style: TextStyle(
                                                    color:Constants.primaryGreenColor,
                                                    fontSize: 10,
                                                    fontFamily: "Proxima Nova",
                                                    fontWeight: FontWeight.w700,
                                                  ),
                                                ),

                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(width: 15),
                                        Text(
                                          "5+ YRS CHAMPION",
                                          style: TextStyle(
                                            color:Constants.primaryGreenColor,
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
                            const DividerView(),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                  Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children:const [
                                    SvgImage(assets: 'assets/images/vote_up.svg',),
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
                                    children:const [
                                      SvgImage(assets: 'assets/images/vote_down.svg',),

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
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text(
                                "2 replies",
                                style: TextStyle(
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
              )
            ],
          ),
        ));
  }
}
