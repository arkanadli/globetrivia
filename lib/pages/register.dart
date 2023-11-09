import 'package:flutter/material.dart';
import 'package:pemmobile/main.dart';
import 'package:pemmobile/pages/googleLogin.dart';

import 'package:pemmobile/pages/login.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                alignment: Alignment.centerLeft,

                // child: Image.asset('assets/LogoItenas.png'),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's get",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(213, 255, 255, 255),
                          letterSpacing: 3),
                    ),
                    Text(
                      'started',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Color.fromARGB(213, 255, 255, 255),
                          letterSpacing: 3),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                style: TextStyle(
                    // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                      vertical: 18), //Change this value to custom as you like
                  // isDense: true,

                  filled: true,
                  fillColor: Color.fromARGB(255, 18, 22, 24),
                  hintText: 'Email',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 70),
                  prefixIcon: Icon(Icons.email_outlined),
                  prefixIconColor: Colors.white54,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(131, 138, 124, 124), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(249, 247, 220, 220), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const TextField(
                style: TextStyle(
                    // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 18, horizontal: -5),
                  // isDense: true,

                  filled: true,
                  fillColor: Color.fromARGB(255, 18, 22, 24),
                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 70),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  prefixIconColor: Colors.white54,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  suffixIconConstraints: BoxConstraints(minWidth: 70),
                  suffixIconColor: Colors.white54,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(131, 138, 124, 124), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 247, 220, 220), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const TextField(
                style: TextStyle(
                    // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 18, horizontal: -5),
                  // isDense: true,

                  filled: true,
                  fillColor: Color.fromARGB(255, 18, 22, 24),
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(
                    fontSize: 14,
                  ),
                  prefixIconConstraints: BoxConstraints(minWidth: 70),
                  prefixIcon: Icon(Icons.lock_outline_rounded),
                  prefixIconColor: Colors.white54,
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  suffixIconConstraints: BoxConstraints(minWidth: 70),
                  suffixIconColor: Colors.white54,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(131, 138, 124, 124), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Color.fromARGB(255, 247, 220, 220), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 14,
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w600),
                      backgroundColor:
                          const Color.fromARGB(255, 252, 252, 252)),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginPage(),
                      ),
                      (route) => false,
                    );
                  },
                  child: const Text('Register'),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: const Text(
                  'or register with',
                  style: TextStyle(color: Colors.white54, letterSpacing: 1),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      textStyle: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w500),
                      backgroundColor: const Color.fromARGB(255, 21, 20, 26)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const GoogleLoginPage(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/Google_Logo.png',
                        width: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text('Google')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white54, letterSpacing: 1),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  InkWell(
                    child: const Text(
                      'Login',
                      style: TextStyle(
                          fontWeight: FontWeight.w600, letterSpacing: 0.5),
                    ),
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                        context,
                        CustomPageRouteTransition(route: const LoginPage()),
                        (Route<dynamic> route) => false,
                      );
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
