import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_http_2/controller/user_controller.dart';
import 'package:flutter_http_2/model/dto/user_dto.dart';
import 'package:flutter_http_2/model/repository/user_repository.dart';
import 'package:flutter_http_2/routes.dart';
import 'package:go_router/go_router.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class UserPage extends HookWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<UserTableController>();

    useEffect(() {
      controller.setUserDTOTableList();
    }, []);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: controller.userDTOTableList?.map((e) => UserItem(postDTOTable: e)).toList()?? [],
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
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.detail);
      },
      child: Container(
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
      ),
    );
  }
}
