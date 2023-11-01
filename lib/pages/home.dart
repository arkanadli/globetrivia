import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pemmobile/main.dart';
import 'package:pemmobile/pages/Tab/articleTab.dart';
import 'package:pemmobile/pages/Tab/bmiTab.dart';
import 'package:pemmobile/pages/Tab/calculatorTab.dart';
import 'package:pemmobile/pages/Tab/converterTab.dart';
import 'package:pemmobile/pages/login.dart';

// import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.user});

  final String user;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  List<Widget> tab = [
    const ArticleTab(),
    const CalculatorTab(),
    const BMITab(),
    const ConverterTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(
          'GLOBEPEDIA',
          style: TextStyle(
              color: Colors.white54,
              fontWeight: FontWeight.w700,
              fontSize: 16,
              letterSpacing: 2),
        ),
        centerTitle: false,
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Icon(Icons.account_circle_rounded),
          ),
          Text(widget.user),
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      CustomPageRouteTransition(route: const LoginPage()),
                      (route) => false);
                },
                icon: const Icon(Icons.logout)),
          )
        ],
      ),
      body: IndexedStack(
        index: currentIndex,
        children: tab,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: currentIndex,
        height: 55,
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        color: Colors.black,
        animationDuration: const Duration(milliseconds: 500),
        animationCurve: Curves.ease,
        buttonBackgroundColor: const Color.fromARGB(255, 171, 25, 207),
        items: const [
          Icon(Icons.article_outlined),
          Icon(Icons.calculate),
          Icon(Icons.monitor_weight),
          Icon(Icons.money)
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //     onTap: (value) {
      //       setState(() {
      //         currentIndex = value;
      //         print(currentIndex);
      //       });
      //     },
      //     currentIndex: currentIndex,
      //     items: const [
      //       BottomNavigationBarItem(
      //           icon: Icon(Icons.article_rounded), label: ''),
      //       BottomNavigationBarItem(icon: Icon(Icons.calculate), label: ''),
      //     ]),
    );
  }
}
