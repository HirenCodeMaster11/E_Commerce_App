import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Row Other() {
  return const Row(
    children: [
      Text(
        "LOW IN STOCK",
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    ],
  );
}

Widget Other2()
{
  return const Row(
    children: [
      Text(
        "QTY",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black),
      ),
    ],
  );
}
