import 'package:flutter/material.dart';

Widget Extra() {
  return Row(
    children: [
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8,right: 10),
            child: Container(
              height: 240,
              width: 178,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xffE2E0DB),
                        borderRadius: BorderRadius.circular(15),
                        image:const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/homeImage/images.jpeg'),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20,top: 8),
                        child: Text('Tommy Cap',style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Men's warm cap",style: TextStyle(
                          color:Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('₹300',style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 240,
              width: 178,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Container(
                      height: 140,
                      width: 140,
                      decoration: BoxDecoration(
                        color: const Color(0xffE2E0DB),
                        borderRadius: BorderRadius.circular(15),
                        image:const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/homeImage/images (1).jpeg'),
                        ),
                      ),
                    ),
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20,top: 8),
                        child: Text('Nick Shoks',style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text("Men's colorful shoks",style: TextStyle(
                          color:Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text('₹100',style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ],
  );
}
