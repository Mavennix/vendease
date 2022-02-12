import 'package:flutter/material.dart';
import 'package:vendease/constants/cart_items.dart';
import 'package:vendease/constants/color.dart';

class CartUi extends StatefulWidget {
  const CartUi({Key? key}) : super(key: key);

  @override
  _CartUiState createState() => _CartUiState();
}

class _CartUiState extends State<CartUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Your Cart', style: TextStyle(color: grey)),
          centerTitle: false,
          actions: <Widget>[
            TextButton(
              child: Text(
                '3 Items',
                style: TextStyle(fontSize: 20, color: primaryColor),
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              const SizedBox(height: 18),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Search Product',
                    contentPadding: const EdgeInsets.all(15),
                    suffixIcon: const Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(
                        Icons.search,
                        size: 18,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: grey, width: .7),
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: grey, width: .7),
                        borderRadius: BorderRadius.circular(8))),
                onChanged: (value) {},
              ),
              const SizedBox(height: 18),
              Column(
                children: cartItems
                    .map(
                      (item) => Container(
                        padding: const EdgeInsets.all(18.0),
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Image.asset(
                              item.image,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.contain,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  item.name,
                                  style: const TextStyle(fontSize: 20),
                                ),
                                Text(
                                  '1 crate',
                                  style: TextStyle(fontSize: 16, color: grey),
                                ),
                                Text(
                                  '₦1,000',
                                  style: TextStyle(fontSize: 16, color: grey),
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(
                                    'assets/images/delete.png',
                                    width: 20.0,
                                    height: 20.0,
                                    fit: BoxFit.contain,
                                  ),
                                  Row(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: lightGrey,
                                          ),
                                          child: const Icon(
                                            Icons.add,
                                            size: 15.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 10),
                                        child: Text(
                                          '${item.currentCount}',
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      GestureDetector(
                                        child: Container(
                                          padding: const EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: lightGrey,
                                          ),
                                          child: const Icon(
                                            Icons.remove,
                                            size: 15.0,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                        style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(primaryColor)),
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                        label: const Text('Add Products'))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'TOTAL',
                          style: TextStyle(fontSize: 28, color: grey),
                        ),
                        Text(
                          '51,000',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: primaryColor),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [Text('Delivery fee not included yet')],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor)),
                        onPressed: () {},
                        child: const Text('Check out'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
