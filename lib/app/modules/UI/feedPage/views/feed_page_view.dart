import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feed_page_controller.dart';

class FeedPageView extends GetView<FeedPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FeedPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'FeedPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
