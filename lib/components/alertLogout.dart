import 'package:flutter/material.dart';
import 'package:pemmobile/main.dart';
import 'package:pemmobile/pages/login.dart';

class AlertLogout extends StatelessWidget {
  const AlertLogout({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        "Confirmation",
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      content: const Text("Are you sure you want to logout from this account?"),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Cancel',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue,
                  fontSize: 18),
            )),
        TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  CustomPageRouteTransition(route: const LoginPage()),
                  (route) => false);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  duration: Duration(milliseconds: 1800),
                  content: Text(
                    'Succesfully logout!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(12))),
                ),
              );
            },
            child: const Text(
              'Yes',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.red, fontSize: 18),
            )),
      ],
    );
  }
}
