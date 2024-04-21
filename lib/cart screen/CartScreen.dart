import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import '../home_screen/home.dart';
import 'BottomAppBar.dart';
import 'Extra.dart';

void main() {
  runApp(const cartScreen());
}

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F9),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Bag',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 22, right: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...List.generate(cart.length, (index) => Cart(index: index)),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(
                      'A Little Somthing Extra?',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Extra(),
            ],
          ),
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
                Navigator.of(context).pushNamed('/check');
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
                  'CHECKOUT',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget Cart({required index}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 178,
              width: 367,
              decoration: const BoxDecoration(
                color: Color(0xffF1F1F1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    bottomLeft: Radius.circular(18)),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 12),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                        children: [
                          Text(
                            "${cart[index]['name']}",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 46),
                            child: Text(
                              '✩4.8',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "${cart[index]['nick']}",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "${cart[index]['price']}",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "LOW IN STOCK",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          "QTY",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 46,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff929AAB),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    if (cart[index]['qut'] > 1) {
                                      cart[index]['qut']--;
                                    }
                                  });
                                },
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(Icons.remove,
                                      color: Colors.black),
                                ),
                              ),
                              Text(
                                '${cart[index]['qut']}',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 22,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    cart[index]['qut']++;
                                  });
                                },
                                child: Container(
                                  height: 28,
                                  width: 28,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: const Icon(Icons.add,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 46,
                            width: 46,
                            decoration: BoxDecoration(
                              color: Color(0xff929AAB),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      cart.removeAt(index);
                                      l1[index]['qut']=1;
                                    });
                                  },
                                  child: Container(
                                    height: 32,
                                    width: 32,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.delete),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 174,
            width: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(18),
                  bottomRight: Radius.circular(18)),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: cart[index]['image'],
              ),
            ),
          )
        ],
      ),
    );
  }
}

int count = 1;

List cart = [];
