import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../data/GlobalWidgets/DividerView.dart';

class InnerPageBottomNavigationBar extends StatelessWidget {
  const InnerPageBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Column(
        children: [
          DividerView(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xfff2f2f2),
                borderRadius: BorderRadius.circular(50)
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(child: TextField(
                      decoration: InputDecoration(
                        hintText: "Add a cheerful comment...",
                        hintStyle:  TextStyle(
                          color: Color(0xffa5b1c2),
                          fontSize: 14,
                        ),
                        border: InputBorder.none
                      ),
                    )),
                    Text(
                      "Post",
                      style: TextStyle(
                        color: Color(0xff00a981),
                        fontSize: 14,
                        fontFamily: "Proxima Nova",
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
