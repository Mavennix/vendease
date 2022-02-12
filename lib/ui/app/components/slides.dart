import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/constants/product_categories.dart';

List<Widget> slides = productCategories
    .map((item) => Column(
          children: <Widget>[
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Container(
                  width: double.infinity,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: <Widget>[
                            Text(
                              'Total Orders',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                  color: grey),
                            ),
                            const SizedBox(
                              height: 18.0,
                            ),
                            Text(
                              '200',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 28.0,
                                  color: yellow),
                            )
                          ],
                        )
                      ]),
                  decoration: BoxDecoration(
                    color: carouselColors[2],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ))
          ],
        ))
    .toList();
