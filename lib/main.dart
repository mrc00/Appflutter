import 'package:flutter/material.dart';
import 'package:untitled/Segunda_tela.dart';

import 'login.page.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/login.page",
      routes: {
        "/login.page": (context) => LoginPage(),
      },
    );
  }
}
