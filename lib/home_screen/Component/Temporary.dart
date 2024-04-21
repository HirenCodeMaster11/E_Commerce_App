import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../home.dart';

Container Temporary({required AssetImage images,required var name, required var nick, required var price,required var index}) {
  return Container(
    height: 186,
    margin: EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          height: 110,
          width: 140,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              image: DecorationImage(
                image: images,
              ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(right: 12,left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(l1[index]['name'],
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              Text(l1[index]['nick'],
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    height: 0.7),),
              Text('₹ ${l1[index]['price']}',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  // height: 2
                ),),
            ],
          ),
        ),
      ],
    ),
  );
}
