import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget Upper_Container() {
  return Padding(
    padding: const EdgeInsets.only(top: 46),
    child: Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/homeImage/container.jpg'),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 14),
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '50% on the entire\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      height: 0.8,
                    ),
                  ),
                  TextSpan(
                    text: 'Winter Collection\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w500,
                      height: 1.4,
                    ),
                  ),
                  TextSpan(
                    text: 'Winter Sale\n',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                      fontWeight: FontWeight.w300,
                      height: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 30),
            height: 34,
            width: 118,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            alignment: Alignment.center,
            child: const Text(
              'Show More',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}