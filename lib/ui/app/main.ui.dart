import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/ui/app/home.ui.dart';

class MainUi extends StatefulWidget {
  const MainUi({Key? key}) : super(key: key);

  @override
  _MainUiState createState() => _MainUiState();
}

class _MainUiState extends State<MainUi> {
  static final List<Widget> _widgetOptions = <Widget>[
    Container(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(child: HomeUi()),
      floatingActionButton: FloatingActionButton(
        child: Image.asset(
          'assets/images/bag-icon.png',
          width: 25.0,
          height: 25.0,
          fit: BoxFit.contain,
        ),
        onPressed: null,
        backgroundColor: primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10.0,
        child: SizedBox(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // children: <Widget>[
            //   Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              MaterialButton(
                minWidth: 40,
                onPressed: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/home.png',
                      width: 25.0,
                      height: 25.0,
                      fit: BoxFit.contain,
                    ),
                    const Text('Home')
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/chat.png',
                      width: 25.0,
                      height: 25.0,
                      fit: BoxFit.contain,
                    ),
                    const Text('Chat')
                  ],
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/invoice.png',
                      width: 25.0,
                      height: 25.0,
                      fit: BoxFit.contain,
                    ),
                    const Text('Invoice')
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: null,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/delivery.png',
                      width: 25.0,
                      height: 25.0,
                      fit: BoxFit.contain,
                    ),
                    const Text('Delivery')
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
