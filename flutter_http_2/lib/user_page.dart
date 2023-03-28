import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_2/user_dto.dart';
import 'package:flutter_http_2/user_repository.dart';
import 'package:http/http.dart' as http;

class UserPage extends HookWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<List<UserDTOTable>?>(null);

    useEffect(() {
      UserRepository.instance.getDTOList().then((value){
        listState.value=value;
      });
    }, []);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children:
              listState.value?.map((e) => UserItem(postDTOTable: e)).toList() ??
                  [],
        ),
      ),
    );
  }
}

class UserItem extends StatelessWidget {
  UserDTOTable postDTOTable;

  UserItem({Key? key, required this.postDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black),
      ),
      child: Column(
        children: [
          Text("아이디 : ${postDTOTable.id}"),
          Divider(),
          Text("이름 : ${postDTOTable.name}"),
          Divider(),
          Text("이메일 : ${postDTOTable.email}"),
        ],
      ),
    );
  }
}
