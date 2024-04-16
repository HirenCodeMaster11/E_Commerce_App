import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding BottomNavigationBar() {
  return Padding(
    padding: const EdgeInsets.symmetric(
      horizontal: 22,
    ),
    child: Container(
      margin: const EdgeInsets.only(top: 16),
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
  );
}