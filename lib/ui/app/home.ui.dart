import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/ui/app/components/app_header.ui.dart';
import 'package:vendease/ui/app/components/indicator.dart';
import 'package:vendease/ui/app/components/product_categories.ui.dart';
import 'package:vendease/ui/app/components/recent_orders.ui.dart';
import 'package:vendease/ui/app/components/slides.dart';

class HomeUi extends StatefulWidget {
  const HomeUi({Key? key}) : super(key: key);

  @override
  _HomeUiState createState() => _HomeUiState();
}

class _HomeUiState extends State<HomeUi> {
  double currentPage = 0.0;
  final _pageViewController = PageController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const AppHeaderUi(),
              Text('What are you looking for today?',
                  style: TextStyle(
                    color: grey,
                  )),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 9.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: 'Show: ',
                            style: TextStyle(fontSize: 12, color: grey),
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'This week',
                                  style: TextStyle(
                                      fontSize: 12, color: primaryColor)),
                            ],
                          ),
                        ),
                        const Icon(Icons.arrow_drop_down)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  children: <Widget>[
                    PageView.builder(
                      controller: _pageViewController,
                      itemCount: slides.length,
                      itemBuilder: (BuildContext context, int index) {
                        _pageViewController.addListener(() {
                          setState(() {
                            currentPage = _pageViewController.page!;
                          });
                        });
                        return slides[index];
                      },
                    ),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: const EdgeInsets.only(top: 70.0),
                          padding: const EdgeInsets.symmetric(vertical: 40.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: indicator(slides, currentPage),
                          ),
                        ))
                  ],
                ),
              )
            ],
          ),
          const ProductCategoriesUi(),
          const RecentOrdersUi()
        ],
      ),
    );
  }
}
