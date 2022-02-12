import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';

List<Widget> indicator(slides, currentPage) => List<Widget>.generate(
    slides.length,
    (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 3.0),
          height: 10.0,
          width: 10.0,
          decoration: BoxDecoration(
              color: currentPage.round() == index ? yellow : Colors.white,
              borderRadius: BorderRadius.circular(10.0)),
        ));
