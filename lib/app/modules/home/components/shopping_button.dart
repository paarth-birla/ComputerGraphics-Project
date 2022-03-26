import 'package:coffee_app/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class ShoppingButton extends StatelessWidget {
  const ShoppingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (_) => IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.shopping_bag_outlined,
          color: _.isWhiteBackground ? Colors.brown[900] : Colors.white,
        ),
      ),
    );
  }
}