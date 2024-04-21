import 'package:e_commerce_app/details%20screen/sizeBox.dart';
import 'package:e_commerce_app/home_screen/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

import 'ColorDetails.dart';
import 'details.dart';

Column detail({required var index}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding:  EdgeInsets.only(top: 26),
        child: Container(
          margin:  EdgeInsets.only(right: 22),
          height: 396,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(16),
            image:  DecorationImage(
              fit: BoxFit.cover,
              image: l1[selectIndex]['image'],
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "${l1[selectIndex]['name']}",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "${l1[selectIndex]['nick']}",
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
              children: List.generate(icon.length, (index) => ColorDetails(index: index,co: icon[index]['co'])),
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
                children: List.generate(
                    4, (index) => sizeBox(index: index + 40))),
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
                    child: Text(
                      "${l1[selectIndex]['description']}",style: TextStyle(
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
  );
}
