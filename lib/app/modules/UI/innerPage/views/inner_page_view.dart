import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/inner_page_controller.dart';

class InnerPageView extends GetView<InnerPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InnerPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'InnerPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
