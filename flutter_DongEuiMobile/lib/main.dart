
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
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

AppBar _buildDoneEuiAppBar(){
  return AppBar(
    backgroundColor: Colors.blueAccent,
    leading: Image.asset("assets/images/dongeui_logo.png"),
    title: const Text("모바일ID", style: TextStyle(fontSize: 40)),
    centerTitle: true,
    actions: [
      IconButton(
          onPressed: (){
          },
          icon: Icon(Icons.menu)) ,
    ],
  );
}

BottomNavigationBar _buildBottom(){
  return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom1.jpg"),
          label: ""
        ),
        BottomNavigationBarItem(
          icon: Image.asset("assets/images/bottom2.jpg"),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/bottom3.jpg"),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/bottom4.jpg"),
            label: ""
        ),
        BottomNavigationBarItem(
            icon: Image.asset("assets/images/bottom5.jpg"),
            label: ""
        ),
      ],
  );
}

class DongEuiPage extends StatelessWidget {
  const DongEuiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildDoneEuiAppBar(),
      bottomNavigationBar: _buildBottom(),
      body: Column(
        children: [
          _buildInfo(),
          _buildMenu()
        ],
      ),
    );
  }
}

Widget _buildInfo(){
  return Column(
    children: [
      Row(
        children: [
          Image.asset("assets/images/profile.jpg", width: 50,height: 50,),
          Column(
            children: [
              Image.asset("assets/images/qr.png", width: 50,height: 50,),
              Text("시간")
            ],
          )
        ],
      ),
      Divider(thickness: 1, height: 1, color: Colors.black87),
      Row(
        children: [
          Text("문땅훈><"),
          Text("ZL 특별열람중"),
        ],
      ),
    ],
  );

}

Widget _buildMenu(){
  return Column(
    children: [
      Row(
        children: [
          Image.asset("assets/images/menu1.jpg"),
          Image.asset("assets/images/menu2.jpg"),
          Image.asset("assets/images/menu3.jpg"),
        ],
      ),
      Row(
        children: [
          Image.asset("assets/images/menu4.jpg"),
          Image.asset("assets/images/menu5.jpg"),
        ],
      )
    ],
  );
}
