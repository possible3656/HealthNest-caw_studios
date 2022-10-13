import 'package:get/get.dart';

import '../controllers/inner_page_controller.dart';

class InnerPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InnerPageController>(
      () => InnerPageController(),
    );
  }
}
