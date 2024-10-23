

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/home_page.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> 
with SingleTickerProviderStateMixin{
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 4), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const MyHomepage()));
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.lightBlue,
            Colors.amberAccent
          ],begin: Alignment.topRight, end: Alignment.bottomLeft)),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'SPLASH SCREEN'
                ,style: TextStyle(
                  color: Colors.amberAccent,
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w900,
                ),
              )
            ],
          ),
        ),
      );
  }
}