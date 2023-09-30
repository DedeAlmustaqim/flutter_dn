import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hyper_ui/core.dart';
import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  SplashView({Key? key}) : super(key: key);

  Widget build(context, SplashController controller) {
    controller.view = this;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[50],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/icon/keyan_shoes.png",
                width: 120.0,
                height: 120.0,
                fit: BoxFit.fill,
              ).animate().fade(duration: 2000.ms),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                "Keyan Shoes",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<SplashView> createState() => SplashController();
}
