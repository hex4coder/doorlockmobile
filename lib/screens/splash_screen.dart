import 'dart:async';

import 'package:doorlockmobile/screens/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /// init
  @override
  void initState() {
    Timer(const Duration(seconds: 4), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
    super.initState();
  }

  /// render UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.fromSize(
        size: MediaQuery.of(context).size,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 140,
                ),
                Image.asset("assets/img/logo.png"),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Welcome to",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
                Text("Door Lock Mobile",
                    style: Theme.of(context).textTheme.titleLarge),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Version 1.0",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox.fromSize(
                  size: const Size(30, 30),
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.grey.withOpacity(.2),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
