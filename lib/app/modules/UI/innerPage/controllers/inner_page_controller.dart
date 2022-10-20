import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InnerPageController extends GetxController {

  late Widget child;
  late String title;

  @override
  void onInit() {
    super.onInit();
    Map arguments = Get.arguments;
    child =arguments['child'] ;
    title =arguments['title'] ;
  }

}