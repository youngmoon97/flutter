class UserDTOTable {
  int id;
  String name;
  String email;

  UserDTOTable({required this.id, required this.name, required this.email});

  factory UserDTOTable.fromJson(dynamic json) => UserDTOTable(
        id: json["id"],
        name: json["name"],
        email: json["email"],
  );

  static List<UserDTOTable> fromJsonList(List jsonList){
    return jsonList.map((json) => UserDTOTable.fromJson(json)).toList();
  }
}

class UserDTODetaiil{
  int id;
  String name;
  String email;
  String body;

  UserDTODetaiil({required this.id, required this.name,
    required this.email, required this.body});

}