// ignore_for_file: constant_identifier_names

import 'package:coffee_app/app/modules/coffee_information/binding/coffee_info_binding.dart';
import 'package:coffee_app/app/modules/coffee_information/views/coffee_info_view.dart';
import 'package:coffee_app/app/modules/home/binding/home_binding.dart';
import 'package:coffee_app/app/modules/home/views/home_view.dart';
import 'package:coffee_app/splash.dart';
import 'package:get/get.dart';

part 'app_routes.dart';

class AppPages
{
  // static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const Splash_Screen(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.COFFEE_INFORMATION,
      page: () => CoffeeInformationView(),
      binding: CoffeeInformationBinding(),
    ),
  ];
}