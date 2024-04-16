import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'BottomAppBar.dart';

void main() {
  runApp(cartScreen());
}

class cartScreen extends StatefulWidget {
  const cartScreen({super.key});

  @override
  State<cartScreen> createState() => _cartScreenState();
}

class _cartScreenState extends State<cartScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF6F7F9),
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Bag',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 22,right: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 178,
                        width: 367,
                        decoration: BoxDecoration(
                          color: Color(0xffF1F1F1),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(18),bottomLeft: Radius.circular(18)),
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(left: 12),
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text('Nike Air MAx 90',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    Padding(
                                      padding: EdgeInsets.only(left: 9),
                                      child: Text('✩4.8',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text("Men's Stylish Nick",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("₹1100",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("LOW IN STOCK",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("QTY",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 46,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              if(count>=1)
                                                {
                                                  count--;
                                                }
                                              else
                                                {
                                                  count=1;
                                                }
                                            });
                                          },
                                          child: Container(
                                            height: 28,
                                            width: 28,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle
                                            ),
                                            child: Icon(Icons.remove,color: Colors.black),
                                          ),
                                        ),
                                        Text('$count',style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),),
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              count++;
                                            });
                                          },
                                          child: Container(
                                              height: 28,
                                              width: 28,
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle
                                              ),
                                            child: Icon(Icons.add,color: Colors.black),
                                            ),
                                        ),
                                      ],
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
                      height: 178,
                      width: 160,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(18),bottomRight: Radius.circular(18)),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/homeImage/shose3.jpeg'),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 48,
                        width: 170,
                        decoration: BoxDecoration(
                          color: Color(0xff135B60),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        alignment: Alignment.center,
                        child: Text('Checkout',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 24,
                        ),),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: buildBottomAppBar(),
      ),
    );
  }
}
int count = 1;