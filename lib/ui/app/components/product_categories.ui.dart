import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/constants/product_categories.dart';

class ProductCategoriesUi extends StatefulWidget {
  const ProductCategoriesUi({Key? key}) : super(key: key);

  @override
  _ProductCategoriesUiState createState() => _ProductCategoriesUiState();
}

class _ProductCategoriesUiState extends State<ProductCategoriesUi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Text(
                'Product categories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('See all',
                  style: TextStyle(fontSize: 12, color: primaryColor))
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            height: 200,
            child: ListView.separated(
              itemCount: productCategories.length,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                width: 20,
              ),
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150,
                  height: 200,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          productCategories[index].image,
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.contain,
                        ),
                        Text(productCategories[index].name),
                      ]),
                  decoration: BoxDecoration(
                    color: carouselColors[index],
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                );
              },
            ))
      ],
    );
  }
}
