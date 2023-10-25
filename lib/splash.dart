import 'package:flutter/material.dart';
import 'package:pemmobile/pages/landing.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _loadingScreen();
    super.initState();
  }

  _loadingScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LandingPage()),
    );
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
            const Text(
              'GLOBEPEDIA TRIVIA',
              style: TextStyle(
                  fontSize: 24, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
