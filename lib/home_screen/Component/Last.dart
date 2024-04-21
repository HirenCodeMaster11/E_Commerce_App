import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container Last({required AssetImage images,required var index}) {
  return Container(
    margin: EdgeInsets.only(right: 12,top: 12),
    padding: EdgeInsets.all(10),
    height: 140,
    width: 140,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      image: DecorationImage(
        image: images,
      ),
    ),
  );
}
