import 'package:rohit_s_application3/presentation/iphone_13_pro_max_three_screen/iphone_13_pro_max_three_screen.dart';
import 'package:rohit_s_application3/presentation/iphone_13_pro_max_three_screen/binding/iphone_13_pro_max_three_binding.dart';
import 'package:rohit_s_application3/presentation/iphone_13_pro_max_four_screen/iphone_13_pro_max_four_screen.dart';
import 'package:rohit_s_application3/presentation/iphone_13_pro_max_four_screen/binding/iphone_13_pro_max_four_binding.dart';
import 'package:rohit_s_application3/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:rohit_s_application3/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';
import 'package:rohit_s_application3/presentation/screen3/docscreen.dart';

class AppRoutes {
  static const String iphone13ProMaxThreeScreen =
      '/iphone_13_pro_max_three_screen';

  static const String iphone13ProMaxFourScreen =
      '/iphone_13_pro_max_four_screen';

  static const String screen3 = '/docscreen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone13ProMaxThreeScreen,
      page: () => Iphone13ProMaxThreeScreen(),
      bindings: [
        Iphone13ProMaxThreeBinding(),
      ],
    ),
    GetPage(
      name: iphone13ProMaxFourScreen,
      page: () => Iphone13ProMaxFourScreen(),
      bindings: [
        Iphone13ProMaxFourBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone13ProMaxThreeScreen(),
      bindings: [
        Iphone13ProMaxThreeBinding(),
      ],
    ),
    GetPage(
      name: screen3,
      page: () => s3(),
    ),
  ];
}
