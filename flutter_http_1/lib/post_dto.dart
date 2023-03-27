
// 테이블 용
class PostDTOTable{
  int userId; // 유저 번호
  int id; // 글번호
  String title;  // 글 제목

  PostDTOTable({required this.userId, required this.id, required this.title});
}
// 상세페이지용
class PostDTODetail{
  int userId; // 유저 번호
  int id; // 글번호
  String title;  // 글 제목
  String body;  // 내용

  PostDTODetail({required this.userId, required this.id, required this.title, required this.body});

}