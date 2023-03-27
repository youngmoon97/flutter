import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>? args;
    try {
      args = ModalRoute
          .of(context)
          ?.settings
          .arguments as List<String>?;
    } catch (e) {
      print(e);
    }

    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context, "돌려받았습니다.");
        return Future.value(true);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("PAGETWO"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: args?.map((e) => Text(e)).toList() ?? [Text("잘못된 요청입니다.")],
          ),
        ),
      ),
    );
  }
}

void showToast(BuildContext context, String message) {
  final scaffold = ScaffoldMessenger.of(context);
  scaffold.showSnackBar(
    SnackBar(content: Text(message),
    ),
  );
}

