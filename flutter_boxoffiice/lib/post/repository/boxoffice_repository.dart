import 'dart:convert';

import 'package:flutter_boxoffiice/post/dto/boxoffice_dto.dart';
import 'package:http/http.dart' as http;

class BoxofficeRepository{
  static BoxofficeRepository? _instance;

  BoxofficeRepository._canAnyName(){

  }

  static BoxofficeRepository get instance => _instance ??= BoxofficeRepository._canAnyName();

  Future<BoxofficeResult?> getDTOList() async{
    String url="http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20120101";
    http.Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200){
      var json = jsonDecode(response.body);

      //print(response.body);
      return BoxofficeResult.fromJson(json["boxOfficeResult"]);
    }else{
      return null;
    }
  }
}
void main(){

}