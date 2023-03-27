
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/routes.dart';
import 'package:flutter_navigator_practice/view/page_one.dart';
import 'package:flutter_navigator_practice/view/page_two.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        Routes.one: (context) => const PageOne(),
        Routes.two: (context) => const PageTwo(),
      },
      initialRoute: Routes.one,
    );
  }
}
