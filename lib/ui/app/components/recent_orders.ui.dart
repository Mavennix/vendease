import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/constants/recent_orders.dart';

class RecentOrdersUi extends StatefulWidget {
  const RecentOrdersUi({Key? key}) : super(key: key);

  @override
  _RecentOrdersUiState createState() => _RecentOrdersUiState();
}

class _RecentOrdersUiState extends State<RecentOrdersUi> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 18.0),
          child: Text(
            'Recent order list',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: recentOrders
              .map(
                (order) => Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.only(left: 9.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: order.isCompleted == true ? greenColor : redColor,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.1),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 1),
                      )
                    ],
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(18),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0),
                          bottomRight: Radius.circular(8.0)),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(order.orderId),
                            Text(order.amount,
                                style: TextStyle(fontSize: 12, color: grey)),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(order.dateTime,
                                style: TextStyle(fontSize: 12, color: grey)),
                            Text('${order.daysAgo} days ago',
                                style: TextStyle(
                                    fontSize: 12, color: primaryColor)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
