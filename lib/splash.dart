// ignore_for_file: camel_case_types, import_of_legacy_library_into_null_safe

import 'package:coffee_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:splashscreen/splashscreen.dart';


class Splash_Screen extends StatelessWidget {
  const Splash_Screen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SplashScreen(
          seconds: 8,
          gradientBackground: const LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffc9711a), Color(0xffe2bc97)],
          ),
          navigateAfterSeconds: Routes.Login,
        ),
        AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: screenHeight,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [Color(0xffe2bc97), Color(0xffe8d3c7)],
          ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Visibility(
                  visible: true,
                  child: Lottie.asset(
                    'assets/coffeesplash.json',
                  ),
                ),
      ],
            ),
        ),
      ],
    );
  }
}