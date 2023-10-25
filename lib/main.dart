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
