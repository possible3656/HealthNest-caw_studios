import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../data/Constants.dart';
import '../../../../../../data/GlobalWidgets/DividerView.dart';

class ReactionScore extends StatelessWidget {
  final String title;
  const ReactionScore({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: Column(
        children: [
         DividerView(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.primaries[2],
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.primaries[1],
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.primaries[3],
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                Text(
                  title,
                  style: const TextStyle(
                    color: Color(0xff535a63),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
         DividerView()
        ],
      ),
    );
  }
}
