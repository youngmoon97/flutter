import 'dart:js';

import 'package:flutter_hooks/flutter_hooks.dart';

import 'UniInfo.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dongeuimobile/UniInfo.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MoonApp());
}

class MoonApp extends StatelessWidget {
  const MoonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: theme(),
      debugShowCheckedModeBanner: false,
      home: DongEuiPage(),
    );
  }
}

class DongEuiPage extends HookWidget {
  const DongEuiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final navIndex = useState(0);

    double screenWidth = MediaQuery.of(context).size.width;
    List widgetItems = [
      ListView(
        children: [
          _buildInfo(screenWidth: screenWidth),
          _buildMenu(context),
        ],
      ),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.yellow,
      ),
      Container(
        color: Colors.green,
      ),
      Container(
        color: Colors.purple,
      ),

    ];

    return Scaffold(
      backgroundColor: Colors.black12,
      appBar: _buildDoneEuiAppBar(),
      bottomNavigationBar: _buildBottom(navIndex),
      body: widgetItems[navIndex.value],
    );
  }
}

AppBar _buildDoneEuiAppBar() {
  return AppBar(
    backgroundColor: Colors.blueAccent,
    leading: Image.asset("assets/images/dongeui_logo.png"),
    title: const Text("모바일ID", style: TextStyle(fontSize: 35)),
    centerTitle: true,
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
    ],
  );
}

BottomNavigationBar _buildBottom(ValueNotifier<int> navIndex) {
  return BottomNavigationBar(
    onTap: (int idx){
      navIndex.value = idx;
    },
    currentIndex: navIndex.value,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom1.jpg"),
          label: ""),
      BottomNavigationBarItem(
        icon: Image.asset("assets/images/bottom2.jpg"),
        label: "",
      ),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom3.jpg"),
          label: "",
      ),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom4.jpg"),
          label: ""),
      BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom5.jpg"),
          label: ""),
    ],
  );
}



launchMyURL() async {
  var uri = Uri.parse("https://www.youtube.com");
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  }
}

Widget _buildInfo({required double screenWidth}) {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: InkWell(
                onTap: (){
                  launchMyURL();
                  print("ontap");
                },
                child: Container(
                  height: 180,
                  child: Image.asset(
                    "assets/images/profile.jpg",
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/qr.png",
                      width: screenWidth * 0.2,
                    ),
                    Text(
                      "시간",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Divider(thickness: 1.5, height: 1, color: Colors.grey),
        ),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  "문땅훈><",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      "ZL",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "특별열람중",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

Widget _buildMenu(context) {
  return Container(
    margin: const EdgeInsets.all(30.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(8.0),
    ),
    child: Column(
      children: [
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => UniInfo())
                  );
                },
                child: Container(
                  height: 180,
                  child: Image.asset("assets/images/menu1.jpg"),
                ),
              ),
            ),
            VerticalDivider(thickness: 1.5, color: Colors.grey),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 180,
                  child: Image.asset("assets/images/menu2.jpg"),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 180,
                  child: Image.asset("assets/images/menu3.jpg"),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Divider(thickness: 1.5, height: 1, color: Colors.grey),
        ),
        Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 180,
                  child: Image.asset("assets/images/menu4.jpg"),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {},
                child: Container(
                  height: 180,
                  child: Image.asset("assets/images/menu5.jpg"),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
