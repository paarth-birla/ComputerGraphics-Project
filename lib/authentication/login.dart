// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:coffee_app/app/routes/app_pages.dart';
import 'package:coffee_app/authentication/signup.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final signupPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(145, 131, 222, 1),
  Color.fromRGBO(160, 148, 227, 1),
]);
final signupDarkPurple = Color.fromRGBO(82, 67, 154, 1);

final loginPurpleGradient = LinearGradient(colors: [
  Color.fromRGBO(229, 178, 202, 1),
  Color.fromRGBO(205, 130, 222, 1),
]);
final loginDarkPurple = Color.fromRGBO(120, 37, 139, 1);

class LogInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top;
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffe2bc97),
          Color(0xffc9711a),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: topPadding),
              SizedBox(height: 10),
              AnimatedImage(),
              SizedBox(
                height: 20.0,
              ),
              Text("Welcome back!",
                  style: GoogleFonts.lato(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white)),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Please, Log In",
                style: GoogleFonts.lato(
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextFormField(
                    style: GoogleFonts.lato(
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.all(20.0),
                      // isDense: true,
                      border: InputBorder.none,
                      hintText: "Username",
                      hintStyle: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 80, 75, 75),
                      ),
                      prefixIcon: Icon(
                        Icons.person_outline_rounded,
                        color: Color.fromARGB(255, 29, 28, 28),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.85,
                height: MediaQuery.of(context).size.height * 0.065,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  color: Colors.white,
                ),
                child: Center(
                  child: TextFormField(
                    style: GoogleFonts.lato(
                      fontSize: 18.0,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      // contentPadding: EdgeInsets.all(20.0),
                      // isDense: true,
                      border: InputBorder.none,
                      hintText: "Password",
                      hintStyle: GoogleFonts.lato(
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 80, 75, 75),
                      ),
                      prefixIcon: Icon(
                        Icons.vpn_key_outlined,
                        color: Color.fromARGB(255, 66, 64, 64),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50.0,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 60.0,
                  child: Center(
                    child: Text(
                      "Continue >",
                      style: GoogleFonts.lato(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(177, 35, 8, 8),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              Text(
                '-------------------------------------------    OR    -------------------------------------------',
              ),
              SizedBox(
                height: 40.0,
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.Signup);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.85,
                  height: 60.0,
                  child: Center(
                    child: Text(
                      "Create an account",
                      style: GoogleFonts.lato(
                        color: Color.fromARGB(255, 44, 43, 42),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xffe8d3c7),
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimatedImage extends StatefulWidget {
  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);

  late final Animation<Offset> _animation = Tween<Offset>(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SlideTransition(
          position: _animation,
          child: Image.asset('assets/person_&_dog.png', height:200),
        ),
      ],
    );
  }
}
