import 'package:flutter/material.dart';

import '../Constants.dart';

class DividerView extends StatelessWidget {
  const DividerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1,
      color: Constants.dividerColor,
    );
  }
}
