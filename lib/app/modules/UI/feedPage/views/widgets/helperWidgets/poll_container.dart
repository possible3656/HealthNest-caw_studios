import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../../../../../data/Constants.dart';
import '../../../../../../data/GlobalMethods.dart';

class PollContainer extends StatelessWidget {
  final int percentage;
  final String title;
  const PollContainer(
      {super.key, required this.percentage, required this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 40,
      child: Stack(children: [
        Container(
          width: ((GlobalMethods.returnScreenSize(context).width - 40) / 100) *
              percentage,
          height: 40,
          color: Constants.dividerColor,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: const TextStyle(
                      color: Color(0xff535a63),
                      fontSize: 12,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "$percentage%",
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    color: Color(0xff535a63),
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
