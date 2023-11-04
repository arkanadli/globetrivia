import 'package:flutter/material.dart';
import 'package:pemmobile/pages/landing.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> fadeAnimation;
  @override
  void initState() {
    _loadingScreen();
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    fadeAnimation = Tween(begin: 0.2, end: 1.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.easeInOut));

    fadeAnimation.addListener(() {
      if (fadeAnimation.isCompleted) {
        controller.reverse();
      }
      if (fadeAnimation.isDismissed) {
        controller.forward();
      }
    });
    controller.forward();
  }

  _loadingScreen() async {
    await Future.delayed(const Duration(seconds: 5), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LandingPage()),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 300,
              margin: const EdgeInsets.all(18),
              child: Image.asset('assets/LogoApp.png'),
            ),
            const SizedBox(
              height: 10,
            ),
            FadeTransition(
              opacity: fadeAnimation,
              child: const Text(
                'GLOBEPEDIA TRIVIA',
                style: TextStyle(
                    fontSize: 24,
                    letterSpacing: 2,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
