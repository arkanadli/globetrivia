import 'package:flutter/material.dart';
import 'package:pemmobile/main.dart';
import 'package:pemmobile/pages/login.dart';
import 'package:pemmobile/pages/register.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              'assets/LogoApp.png ',
              width: 320,
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 280,
              child: Text(
                'Globepedia Trivia.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 280,
              child: Text(
                'Share interesting facts, daily trivia, and encourage to learn something new.',
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Spacer(
              flex: 2,
            ),
            Container(
              width: double.infinity,
              height: 62,
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(35),
                ),
                color: Color.fromARGB(255, 35, 33, 44),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: double.maxFinite,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.white,
                          foregroundColor: Colors.black,
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            CustomPageRouteTransition(route: const LoginPage()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text('Login'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: double.maxFinite,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          foregroundColor:
                              const Color.fromARGB(228, 255, 255, 255),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            CustomPageRouteTransition(
                                route: const RegisterPage()),
                            (Route<dynamic> route) => false,
                          );
                        },
                        child: const Text('Sign up'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
