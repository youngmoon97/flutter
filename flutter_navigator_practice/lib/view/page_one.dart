
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_navigator_practice/routes.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PAGE ONE"),
      ),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.two, arguments: ["안녕하세요","hihi"]).then((value) => print(value));
                },
                child: const Text("Go to Page Two\n현재 페이지 위로 열기")
            ),
            const SizedBox(
              height: 20,
            ),
            Divider(thickness: 1.0 ,height: 1.0, color: Colors.black,),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, Routes.two, arguments: "hihi").then((value) => print(value));
                },
                child: const Text("Go to Page Two2\n현재 페이지 위로 열기")
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
