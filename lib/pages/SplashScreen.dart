// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ggdk/pages/Homescreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (content) => const HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromARGB(255, 5, 116, 44), Colors.green]),
      ),
      child: Center(
          child: Image.asset(
        'assets/images/Logo.png',
        height: 300,
        width: 300,
      )),
    );
  }
}
