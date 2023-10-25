import 'package:flutter/material.dart';
import 'package:pemmobile/pages/resetPassword.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: const Text('Forgot Password'),
          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: const Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: const TextField(
                style: TextStyle(
                    // color: Color.fromARGB(255, 0, 0, 0),
                    ),
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 18, horizontal: -5),
                  // isDense: true,

                  filled: true,
                  fillColor: Color.fromARGB(255, 18, 22, 24),
                  hintText: 'Email Account',
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
                        color: Color.fromARGB(255, 247, 220, 220), width: 1),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 0,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: SizedBox(
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ResetPasswordPage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('Send Email Confirmation'),
                      Container(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.centerRight,
                          child: const Icon(Icons.send))
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
