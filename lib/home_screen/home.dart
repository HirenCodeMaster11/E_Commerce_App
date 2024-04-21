import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Component/Categories.dart';
import 'Component/Last_Viewed.dart';
import 'Component/Temporary.dart';
import 'Component/Upper_Container.dart';
import 'Component/greatest.dart';
import 'Component/Last.dart';

void main() {
  runApp(const homeScreen());
}

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7F9),
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
                        List.generate(l1.length, (index) =>
                            InkWell(
                                onTap: () {
                                  setState(() {
                                    selectIndex = index;
                                    Navigator.of(context).pushNamed('/detail');
                                  });
                                },
                                child: Temporary(index: index,
                                    images: l1[index]['image'],
                                    name: l1[index]['name'],
                                    nick: l1[index]['nick'],
                                    price: l1[index]['price'])),),
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
                List.generate(l1.length, (index) =>
                    Last(index: index, images: l1[index]['image']),),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(top: 16, bottom: 11,right: 22,left: 22),
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
                child: const Icon(Icons.home_rounded, size: 27,),
              ),
              const Icon(CupertinoIcons.search, color: Colors.white, size: 24,),
              const Icon(CupertinoIcons.heart, color: Colors.white, size: 24,),
              InkWell(
                onTap: () {
                    Navigator.of(context).pushNamed('/cart');
                },
                child: Container(
                  height: 32,
                  width: 32,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: const Icon(
                    CupertinoIcons.bag, color: Colors.black, size: 24,),
                ),
              ),
              const Icon(CupertinoIcons.person, color: Colors.white, size: 24,),
            ],
          ),
        ),
      ),
    );
  }
}
AssetImage p1 =  AssetImage('assets/homeImage/jacket.jpg');
AssetImage p2 =  AssetImage('assets/homeImage/shose3.jpeg');
AssetImage p3 =  AssetImage('assets/homeImage/shoks.png');

List l1 = [
  {'image' : p1 , 'name' : 'Nike Jacket', 'nick' : "Men's warm jacket",'price' : '₹1100','description' : 'The Nike Sportswear Windrunner Jacket updates our first running windbreaker with lightweight fabric made from recycled materials. Design details pulled from the original version provide a heritage Nike look. This product is made from 100% recycled polyester fibres.','qut' : 1} ,
  {'image' : p2 , 'name' : 'Nike Air 90', 'nick' : "Men's warm shoes",'price' : '₹1190','description' : 'Nothing as fly, nothing as comfortable, nothing as proven.The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details.Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.','qut' : 1} ,
  {'image' : p3 , 'name' : 'Nike Shokes', 'nick' : "Men's warm Shokes",'price' : '₹190','description' : 'The Nike Racing Socks deliver performance comfort so you can stay focused on the finish line. Taking a step forward from its origins at Breaking2, these socks deliver a snug fit and slip resistance to help keep you secure on your run.','qut' : 1} ,

];
int selectIndex = 0;