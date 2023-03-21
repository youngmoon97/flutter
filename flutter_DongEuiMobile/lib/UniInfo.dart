import 'package:flutter/material.dart';

class UniInfo extends StatelessWidget {
  const UniInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text("학사안내입니다.")
            ],
          ),
        ),
      ),
    );
  }
}
