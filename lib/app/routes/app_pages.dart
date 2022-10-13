import 'package:get/get.dart';


import '../modules/Onboarding/signUpPage/bindings/sign_up_page_binding.dart';
import '../modules/Onboarding/signUpPage/views/sign_up_page_view.dart';
import '../modules/UI/feedPage/bindings/feed_page_binding.dart';
import '../modules/UI/feedPage/views/feed_page_view.dart';
import '../modules/UI/innerPage/bindings/inner_page_binding.dart';
import '../modules/UI/innerPage/views/inner_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SIGN_UP_PAGE;

  static final routes = [

    GetPage(
      name: _Paths.SIGN_UP_PAGE,
      page: () => SignUpPageView(),
      binding: SignUpPageBinding(),
    ),
    GetPage(
      name: _Paths.INNER_PAGE,
      page: () => InnerPageView(),
      binding: InnerPageBinding(),
    ),
    GetPage(
      name: _Paths.FEED_PAGE,
      page: () => FeedPageView(),
      binding: FeedPageBinding(),
    ),
  ];
}
