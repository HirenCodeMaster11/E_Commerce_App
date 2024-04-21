import 'package:flutter/cupertino.dart';

Padding sizeBox({required int index}) {
  return Padding(
    padding: const EdgeInsets.only(top: 8,right: 12),
    child: Row(
      children: [
        Container(
          height: 64,
          width: 64,
          decoration: BoxDecoration(
            color: const Color(0xffE3DEDC),
            borderRadius: BorderRadius.circular(15),
          ),
          alignment: Alignment.center,
          child: Text('$index',style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),),
        ),
      ],
    ),
  );
}