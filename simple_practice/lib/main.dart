import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Calc(),
    );
  }
}

class Calc extends StatelessWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(10.0),
              child: Row(
                children: const[
                  Padding(
                    padding: EdgeInsets.only(left: 14.0),
                    child: Icon(Icons.menu,
                    size: 40.0,),
                  ),
                  // Spacer(),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text
                      ("표준",
                        style:TextStyle(
                      fontSize: 40.0,
                    )
                    ),
                  ),
                  Spacer(),

                ],
              ),
            ),
            Container(
                alignment: Alignment. centerRight,
                color: Colors.grey,
                child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("0", style: TextStyle(fontSize: 50),),
              ),
            )),
            Container(
                child: Row(
              children: const[
                Padding(
                  padding: EdgeInsets.only(left: 80, right: 55),
                  child: Text("MC", style: TextStyle(fontSize: 27),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 60, right:60),
                  child: Text("MR", style: TextStyle(fontSize: 27),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Text("M+", style: TextStyle(fontSize: 27),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Text("M-", style: TextStyle(fontSize: 27),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 60, right: 60),
                  child: Text("MS", style: TextStyle(fontSize: 27),),
                ),

                Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text("M*", style: TextStyle(fontSize: 27),),
                ),
              ],
            )),
            Container(
                color: CupertinoColors.systemGrey2,
                child: Column(
                  children:[
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                              child:Text("%", style: TextStyle(fontSize: 50),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                              child:Text("CE", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                              child:Text("C", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                                color: CupertinoColors.systemGrey4,
                              child:Icon(Icons.backspace, size: 30,)
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("7", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("8", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("9", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                                alignment: Alignment.center,
                                width: 180,
                                height: 100,
                                padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                                child:Text("X", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("4", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("5", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("6", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                              child:Text("ㅡ", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("1", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("2", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("3", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: CupertinoColors.systemGrey4,
                              child:Text("+", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 5),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("/", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text("0", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(0.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.white,
                              child:Text(".", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 20),
                            child: Container(
                              alignment: Alignment.center,
                              width: 180,
                              height: 100,
                              padding: EdgeInsets.all(5.0),
                              color: Colors.blueGrey,
                              child:Text("=", style: TextStyle(fontSize: 42),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]
                )
            )
          ],
        ),
      ),
    );
  }
}