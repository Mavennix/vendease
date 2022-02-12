import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:vendease/constants/color.dart';
import 'package:vendease/router/routes.dart';

class AppHeaderUi extends StatelessWidget {
  const AppHeaderUi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: 'Welcome ',
            style: TextStyle(fontWeight: FontWeight.bold, color: grey),
            children: <TextSpan>[
              TextSpan(text: 'Mhiday', style: TextStyle(color: primaryColor)),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            const CircleAvatar(
              radius: 15,
              backgroundImage: CachedNetworkImageProvider(
                "https://static.remove.bg/remove-bg-web/a926ef00c5b240026e33dca1d7965424632c6781/assets/start-1abfb4fe2980eabfbbaaa4365a0692539f7cd2725f324f904565a9a744f8e214.jpg",
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            GestureDetector(
              child: Image.asset(
                'assets/images/cart-icon.png',
                width: 25.0,
                height: 25.0,
                fit: BoxFit.contain,
              ),
              onTap: () {
                Navigator.pushNamed(context, cartRoute);
              },
            )
          ],
        )
      ],
    );
  }
}
