import 'dart:convert';

import 'package:flutter_http_2/model/dto/user_dto.dart';
import 'package:http/http.dart' as http;

class UserRepository{
  static UserRepository? _instance;

  UserRepository._canAnyName(){

  }// 생성자

  static UserRepository get instance => _instance ??= UserRepository._canAnyName();

  Future<List<UserDTOTable>?> getDTOList() async{
    String url = "https://jsonplaceholder.typicode.com/users";

    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode == 200){
      return UserDTOTable.fromJsonList(jsonDecode(response.body));
    }else{
      return null;
    }
  }
}

void main(){
  //
}