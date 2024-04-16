import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Widget ColorDetails({required var images,required var index}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 12),
        child: Container(
          height: 50,
          width: 84,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            border: Border.all(color: Colors.black,width: 2),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: images,
                ),
          ),
        ),
      ),
    ],
  );
}