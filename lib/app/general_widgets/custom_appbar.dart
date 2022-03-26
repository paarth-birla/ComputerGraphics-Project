import 'package:coffee_app/app/modules/home/components/shopping_button.dart';
import 'package:coffee_app/app/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: GetBuilder<HomeController>(
        builder: (_) => IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: _.isWhiteBackground ? Colors.brown[900] : Colors.white,
            ),
            onPressed: () {}),
      ),
      actions: const [ShoppingButton()],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}