import 'package:coffee_app/app/modules/coffee_information/controller/coffee_info_controller.dart';
import 'package:get/get.dart';

class CoffeeInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CoffeeInformationController>(
      () => CoffeeInformationController(),
    );
  }
}