import 'package:coffee_app/app/general_widgets/custom_appbar.dart';
import 'package:coffee_app/app/modules/home/components/coffee_list.dart';
import 'package:coffee_app/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppBar(),
        extendBodyBehindAppBar: true,
        body: SizedBox.expand(
          child: Stack(
            children: [
              GetBuilder<HomeController>(
                builder: (_) => Positioned.fill(
                    child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        _.isWhiteBackground ? Colors.white : const Color(0xffa4876d),
                        Colors.white
                      ])),
                )),
              ),
              Positioned(
                  bottom: -(MediaQuery.of(context).size.width / 2) - 50,
                  child: PhysicalModel(
                    shadowColor: const Color.fromRGBO(230, 81, 0, 1),
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                    elevation: 40,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.width,
                    ),
                  )),
              const Positioned.fill(
                  child: CoffeeList(
                names: [
                  'Caramelized Pecan Latte',
                  'Caramel Cold Drinkz',
                  'Capuchino',
                  'Caramel Macchiato',
                  'Caramel Cold Drink',
                  'Iced Coffe Mocha',
                  'Toffee Nut Iced Latte',
                  'Americano',
                  'Vietnamese-Style Iced Coffee',
                  'Black Tea Latte',
                  'Classic Irish Coffee',
                  'Toffee Nut Crunch Latte'
                ],
                prices: [
                  2.50,
                  3.00,
                  4.50,
                  3.00,
                  2.50,
                  4.00,
                  2.50,
                  3.00,
                  4.50,
                  3.00,
                  2.50,
                  4.00
                ],
              )),
            ],
          ),
        ));
  }
}