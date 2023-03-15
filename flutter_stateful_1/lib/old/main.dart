import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';

/*
void main() {
  runApp(const MyApp());
}
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Parent(),
    );
  }
}

class Parent extends StatefulWidget { // 부모
  const Parent({Key? key}) : super(key: key);

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {
  //2번 자식한테 줄 변수(출력)
  int count=0;
  //1번 자식한테 줄 함수(변경)
  void setCount(int newCount){
    setState(() {
      count = newCount;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Child1(callback: setCount),
        Child2(count: count),
      ],
    );
  }
}

class Child1 extends StatelessWidget { //자식1은 부모의 state를 변경

  final Function callback;

  const Child1({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          callback(Random().nextInt(100));
        },
        child: const Text("난수 생성"),
    );
  }
}

class Child2 extends StatelessWidget { //자식1은 부모의 state를 출력

  final int count;

  const Child2({Key? key, required this.count}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(count.toString());
  }
}


