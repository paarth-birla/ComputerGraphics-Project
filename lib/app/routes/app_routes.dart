// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes
{
  static const Splash = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const COFFEE_INFORMATION = _Paths.COFFEE_INFORMATION;
}

abstract class _Paths {
  static const SPLASH = '/';
  static const HOME = '/home';
  static const COFFEE_INFORMATION = '/coffee-information';
}