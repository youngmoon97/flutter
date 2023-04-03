import 'package:flutter/foundation.dart';
import 'package:flutter_http_2/model/dto/user_dto.dart';
import 'package:flutter_http_2/model/repository/user_repository.dart';

class UserTableController extends ChangeNotifier{
  List<UserDTOTable>? _userDTOTableList;

  List<UserDTOTable>? get userDTOTableList => _userDTOTableList;

  void setUserDTOTableList(){
    UserRepository.instance.getDTOList().then((value){
      _userDTOTableList=value;
      notifyListeners();
    });
  }
}