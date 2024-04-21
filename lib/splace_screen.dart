import 'dart:async';

import 'package:e_commerce_app/home_screen/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(splaceScreen());
}

class splaceScreen extends StatefulWidget {
  const splaceScreen({super.key});

  @override
  State<splaceScreen> createState() => _splaceScreenState();
}

class _splaceScreenState extends State<splaceScreen> {
  @override
  void initState()
  {
    Timer(Duration(seconds: 3),()
    {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homeScreen(),));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('assets/logo/logo.png'),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}

