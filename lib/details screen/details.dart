import 'package:e_commerce_app/details%20screen/sizeBox.dart';
import 'package:flutter/material.dart';

import 'ColorDetails.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffF6F7F9),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 46),
                  child: Container(
                    margin: const EdgeInsets.only(right: 22),
                    height: 396,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(16),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/homeImage/shose3.jpeg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text(
                            "Nike Air Max 90",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Men's Stylish Nike",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              "Select Color",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          List.generate(l1.length, (index) => ColorDetails(index: index,images: l1[index]['image']))
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              "Select Size",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                          List.generate(4, (index) => sizeBox(index: index+40))
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 14),
                            child: Text(
                              "Description",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Container(
                              height: 120,
                              width: 370,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Text(
                                "Nothing as fly, nothing as comfortable, nothing as proven.The Nike Air Max 90 stays true to its OG running roots with the iconic Waffle sole, stitched overlays and classic TPU details.Classic colours celebrate your fresh look while Max Air cushioning adds comfort to the journey.",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [
              Container(
                height: 66,
                width: 379,
                decoration: BoxDecoration(
                  color: const Color(0xff135B60),
                  borderRadius: BorderRadius.circular(28),
                ),
                alignment: Alignment.center,
                child: const Text('🛍️ ADD TO BAG',style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 21,
                    color: Colors.white
                ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
List l1 = [
  {'image' : c1} ,
  {'image' : c2} ,
  {'image' : c3} ,
];
AssetImage c1 = const AssetImage('assets/homeImage/shose3.jpeg');
AssetImage c2 = const AssetImage('assets/homeImage/shose4.jpeg');
AssetImage c3 = const AssetImage('assets/homeImage/shose2.jpeg');