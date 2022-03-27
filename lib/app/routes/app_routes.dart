// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes
{
  static const Login = _Paths.LOGIN;
  static const Signup = _Paths.SIGNUP;
  static const Splash = _Paths.SPLASH;
  static const HOME = _Paths.HOME;
  static const COFFEE_INFORMATION = _Paths.COFFEE_INFORMATION;
}

abstract class _Paths {
  static const LOGIN = '/login';
  static const SIGNUP = '/signup';
  static const SPLASH = '/';
  static const HOME = '/home';
  static const COFFEE_INFORMATION = '/coffee-information';
}