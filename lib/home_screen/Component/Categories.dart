import 'package:flutter/material.dart';

Padding Categories() {
  return Padding(
    padding: const EdgeInsets.only(top: 7),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 32,
            width: 66,
            decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: const Text(
              'All',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 32,
            width: 66,
            decoration: BoxDecoration(
                color: const Color(0xffB0B0B0),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: const Text(
              'Men',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 32,
            width: 90,
            decoration: BoxDecoration(
                color: const Color(0xffB0B0B0),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child:const Text(
              'Women',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
          Container(
            height: 32,
            width: 100,
            decoration: BoxDecoration(
                color: const Color(0xffB0B0B0),
                borderRadius: BorderRadius.circular(15)),
            alignment: Alignment.center,
            child: const Text(
              'Children',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

Padding Top_Categories() {
  return const Padding(
    padding: const EdgeInsets.only(left: 22, top: 23),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Top Categories',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ],
    ),
  );
}