import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget ColorDetails({required var index, required Color co}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: Icon(
          Icons.radio_button_checked,
          color: co,
          size: 40,
        ),
      ),
    ],
  );
}