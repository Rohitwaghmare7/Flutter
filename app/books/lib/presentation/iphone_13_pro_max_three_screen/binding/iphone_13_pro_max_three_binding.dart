import '../controller/iphone_13_pro_max_three_controller.dart';
import 'package:get/get.dart';

class Iphone13ProMaxThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone13ProMaxThreeController());
  }
}
