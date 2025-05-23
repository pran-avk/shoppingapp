import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shoppingapp/MainPage/mainPage.dart';

void main() {
  runApp(const MaterialApp(home: SplashScreen()));
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _size = 100.0;
  Timer? growTimer;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Safe way to access MediaQuery after context is available
    _size = MediaQuery.of(context).size.width / 2;

    // Start growing animation after 4 seconds
    Timer(const Duration(seconds: 4), () {
      growTimer = Timer.periodic(const Duration(milliseconds: 100), (timer) {
        setState(() {
          _size += 40;
        });
      });
    });

    // Navigate to main page after 5 seconds
    Timer(const Duration(seconds: 5), () {
      growTimer?.cancel();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Mainpage()),
      );
    });
  }

  @override
  void dispose() {
    growTimer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          height: _size,
          width: _size,
          child: Image.asset(
            'assets/images/splash.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
