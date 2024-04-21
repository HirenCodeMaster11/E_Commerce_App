import 'package:e_commerce_app/splace_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cart screen/CartScreen.dart';
import 'checkout screen/checkoutScreen.dart';
import 'details screen/details.dart';
import 'home_screen/home.dart';

void main()
{
  runApp(eCommerceApp());
}

class eCommerceApp extends StatefulWidget {
  const eCommerceApp({super.key});

  @override
  State<eCommerceApp> createState() => _eCommerceAppState();
}

class _eCommerceAppState extends State<eCommerceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     routes: {
       '/' : (context) => splaceScreen(),
       '/home' : (context) => homeScreen(),
       '/detail' : (context) => detailScreen(),
       '/cart' : (context) => cartScreen(),
       '/check' : (context) => checkoutScreen(),
     },
    );
  }
}
