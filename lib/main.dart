import 'package:flutter/material.dart';
import 'package:pemmobile/splash.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(255, 21, 20, 26)),
          scaffoldBackgroundColor: const Color.fromARGB(255, 21, 20, 26)),
      home: const Splash(),
    );
  }
}

class CustomPageRouteTransition extends PageRouteBuilder {
  final Widget route;
  CustomPageRouteTransition({required this.route})
      : super(
            pageBuilder: (context, animation, secondaryAnimation) {
              // as the destination page transition
              return route;
            },
            transitionDuration: const Duration(milliseconds: 300),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final slideAnimation =
                  Tween(begin: const Offset(0.3, 0.1), end: Offset.zero)
                      .animate(CurvedAnimation(
                          parent: animation, curve: Curves.easeInOut));
              return FadeTransition(
                opacity: animation,
                child: SlideTransition(
                  position: slideAnimation,
                  child: child,
                ),
              );
            });
}
