import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({super.key});

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with TickerProviderStateMixin {
  late AnimationController controller;
  late Animation<double> spinAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 500));

    spinAnimation = Tween<double>(begin: 0, end: 1)
        .animate(CurvedAnimation(parent: controller, curve: Curves.decelerate));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Author',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 142, 50, 158),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          RotationTransition(
            turns: spinAnimation,
            child: GestureDetector(
              onTap: () {
                controller.forward();
                if (controller.isCompleted) {
                  controller.reverse();
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(150),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(136, 156, 49, 175),
                        spreadRadius: 1,
                        blurRadius: 20,
                      )
                    ]),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(150),
                  child: const Image(
                    image: AssetImage('assets/fotoarkan3.jpg'),
                    alignment: Alignment.center,
                    fit: BoxFit.cover,
                    width: 300,
                    height: 300,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(
            width: double.maxFinite,
            child: Text(
              'Muhammad Arkan Adli',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: double.maxFinite,
            child: Text(
              '19 Years Old',
              style: TextStyle(fontSize: 28),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: double.maxFinite,
            child: Text(
              'Studying in Institute Technology National Bandung',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            width: double.maxFinite,
            child: Text(
              'Number Student : 152021168',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
