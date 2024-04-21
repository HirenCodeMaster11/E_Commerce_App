import 'package:e_commerce_app/details%20screen/Component/temp.dart';
import 'package:e_commerce_app/home_screen/home.dart';
import 'package:flutter/material.dart';

import '../cart screen/CartScreen.dart';

void main() {
  runApp(const detailScreen());
}

class detailScreen extends StatefulWidget {
  const detailScreen({super.key});

  @override
  State<detailScreen> createState() => _detailScreenState();
}

class _detailScreenState extends State<detailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF6F7F9),
        appBar: AppBar(
          backgroundColor: Color(0xffF6F7F9),
          leading: InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/home');
            },
              child: Icon(Icons.arrow_back)),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: detail(index: selectIndex),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.transparent,
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    cart.add(l1[selectIndex]);
                  });
                  Navigator.of(context).pushNamed('/cart');
                },
                child: Container(
                  height: 66,
                  width: 379,
                  decoration: BoxDecoration(
                    color: const Color(0xff135B60),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    '🛍️ ADD TO BAG',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 21,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
    );
  }
}

List icon = [
  {'co': Colors.black},
  {'co': Colors.lightGreen},
  {'co': Colors.grey},
  {'co': Colors.white70},
];

