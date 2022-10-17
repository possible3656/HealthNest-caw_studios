import 'package:flutter/material.dart';

import '../GlobalMethods.dart';

class MagicScroll extends StatelessWidget {
  final Widget child;
  final Color? bgColor;
  final bool? paddingEnabled;
  final Widget? bottomNavigationBar;

  const MagicScroll(
      {Key? key,
      required this.child,
      this.bgColor,
      this.paddingEnabled,
      this.bottomNavigationBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      bottomNavigationBar: bottomNavigationBar,
      body: SingleChildScrollView(
        child: SizedBox(
          height: GlobalMethods.returnScreenSize(context).height,
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(paddingEnabled == null ? 20.0 : 0),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
