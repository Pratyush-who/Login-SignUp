import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/welcome'); 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            Text(
              'Luffy Adventure',
              style: TextStyle(
                fontSize: 34.0,
                fontWeight: FontWeight.bold,
                color: Colors.white, 
              ),
            ),
            SizedBox(height: 10),
            Text.rich(TextSpan(
              children: [
                TextSpan(text: 'Join Today..!!',
                style: TextStyle(fontSize: 18,
                color: Colors.white,
                )
                ), 
              ], 
            )), 
          ],
        ),
      ),
    );
  }
}