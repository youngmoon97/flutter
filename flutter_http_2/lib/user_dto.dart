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
}