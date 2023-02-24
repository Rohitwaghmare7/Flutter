import '../controller/iphone_13_pro_max_four_controller.dart';
import 'package:get/get.dart';

class Iphone13ProMaxFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Iphone13ProMaxFourController());
  }
}
