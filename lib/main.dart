import 'package:flutter/material.dart';
import 'package:vendease/router/router.dart';
import 'package:vendease/ui/app/main.ui.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Vendease',
        theme: ThemeData(
          fontFamily: 'Lato',
          appBarTheme: AppBarTheme(
              elevation: 0.0,
              backgroundColor: Colors.white,
              foregroundColor: Colors.black //here you can give the text color
              ),
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: const MainUi(),
        onGenerateRoute: Routers.generateRoute);
  }
}
