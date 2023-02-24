import 'package:rohit_s_application3/core/app_export.dart';
import 'package:rohit_s_application3/presentation/iphone_13_pro_max_four_screen/models/iphone_13_pro_max_four_model.dart';
import 'package:flutter/material.dart';

class Iphone13ProMaxFourController extends GetxController {
  TextEditingController groupNineController = TextEditingController();

  Rx<Iphone13ProMaxFourModel> iphone13ProMaxFourModelObj =
      Iphone13ProMaxFourModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  
void Create() {
  Get.toNamed(AppRoutes.screen3);
}

  @override
  void onClose() {
    super.onClose();
    groupNineController.dispose();
  }
}
