import 'package:flutter/material.dart';
import 'package:flutter_http_2/controller/user_controller.dart';
import 'package:flutter_http_2/routes.dart';
import 'package:flutter_http_2/view/pages/user_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (BuildContext context) => UserTableController()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: Routes.goRouter,
    );
  }
}
