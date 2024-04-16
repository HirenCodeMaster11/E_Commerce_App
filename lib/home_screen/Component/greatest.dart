import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Padding TheLatest() {
  return const Padding(
    padding: EdgeInsets.only(left: 22, top: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'The Latest And Greatest',
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