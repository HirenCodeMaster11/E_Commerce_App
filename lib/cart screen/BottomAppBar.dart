import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildBottomAppBar() {
  return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
      ),
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        height: 65,
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
              const Icon(Icons.home_rounded,size: 24,color: Colors.white,),
              const Icon(CupertinoIcons.search,color: Colors.white,size: 24,),
              const Icon(CupertinoIcons.heart,color: Colors.white,size: 24,),
              Container(
                height: 32,
                width: 32,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(Icons.local_mall,color: Colors.black,size: 22,),
              ),
              const Icon(CupertinoIcons.person,color: Colors.white,size: 24,),
            ],
          ),
        ),
      ),
  );
}
