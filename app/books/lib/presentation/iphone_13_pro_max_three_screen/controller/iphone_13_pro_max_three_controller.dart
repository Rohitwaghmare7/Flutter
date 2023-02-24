import 'package:rohit_s_application3/core/app_export.dart';
import 'package:rohit_s_application3/presentation/iphone_13_pro_max_three_screen/models/iphone_13_pro_max_three_model.dart';

class Iphone13ProMaxThreeController extends GetxController {
  Rx<Iphone13ProMaxThreeModel> iphone13ProMaxThreeModelObj =
      Iphone13ProMaxThreeModel().obs;

  @override
  void onReady() {
    super.onReady();
    Future.delayed(const Duration(milliseconds: 4000), () {
      Get.toNamed(AppRoutes.iphone13ProMaxFourScreen);
    });
  }

  @override
  void onClose() {
    super.onClose();
  }
}
