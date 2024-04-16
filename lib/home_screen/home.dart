import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

import 'Component/BottomNavigaton.dart';
import 'Component/Categories.dart';
import 'Component/Last_Viewed.dart';
import 'Component/Temporary.dart';
import 'Component/Upper_Container.dart';
import 'Component/greatest.dart';

void main() {
  runApp(homeScreen());
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffF6F7F9),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Upper_Container(),
              Top_Categories(),
              Categories(),
              TheLatest(),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 22,
                  ),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children:
                          List.generate(l1.length, (index) => Temporary(index: index,images: l1[index]['image'],name: l1[index]['name'],nick : l1[index]['nick'],price : l1[index]['price']),),
                        ),
                      ),
                      LastViewed(),
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:
                  List.generate(l1.length, (index) => Navigation(index: index,images: l1[index]['image']),),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            child : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 22,
              ),
              child: Container(
                margin: EdgeInsets.only(top: 16),
                height: 51,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xff135B60),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 32,
                        width: 32,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        alignment: Alignment.center,
                        child: const Icon(Icons.home_rounded,size: 27,),
                      ),
                      const Icon(CupertinoIcons.search,color: Colors.white,size: 24,),
                      const Icon(CupertinoIcons.heart,color: Colors.white,size: 24,),
                      const Icon(CupertinoIcons.bag,color: Colors.white,size: 24,),
                      const Icon(CupertinoIcons.person,color: Colors.white,size: 24,),
                    ],
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}

List l1 = [
  {'image' : p1 , 'name' : 'Nike Jacket', 'nick' : "Men's warm jacket",'price' : '₹1100'} ,
  {'image' : p2 , 'name' : 'Nike Air Max 90', 'nick' : "Men's warm shoes",'price' : '₹1190'} ,
  {'image' : p3 , 'name' : 'Nike Air Shokes', 'nick' : "Men's warm Shokes",'price' : '₹190'} ,

];
AssetImage p1 = AssetImage('assets/homeImage/jacket.jpg');
AssetImage p2 = AssetImage('assets/homeImage/shose3.jpeg');
AssetImage p3 = AssetImage('assets/homeImage/shoks.png');