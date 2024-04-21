import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding BottomNavigation() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 22,
    ),
    child: Container(
      margin: const EdgeInsets.only(top: 16,bottom: 8),
      height: 51,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xff135B60),
        borderRadius: BorderRadius.circular(28),
      ),
      alignment: Alignment.center,
      child: Text('PAYMENT',style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.w500,
        fontSize: 23,
      ),),
    ),
  );
}
