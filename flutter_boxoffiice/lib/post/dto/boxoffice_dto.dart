class BoxofficeDTOTable {
  String rank;
  String audiCnt;
  String movieNm;
  String openDt;

  BoxofficeDTOTable({
    required this.rank,
    required this.audiCnt,
    required this.movieNm,
    required this.openDt,});

  factory BoxofficeDTOTable.fromJson(dynamic json) =>
      BoxofficeDTOTable(
        rank: json["rank"],
        audiCnt: json["audiCnt"],
        movieNm: json["movieNm"],
        openDt: json["openDt"],
      );

  static List<BoxofficeDTOTable> fromJsonList(List jsonList) {
    return jsonList.map((json) => BoxofficeDTOTable.fromJson(json)).toList();
  }
}

class BoxofficeResult {
  String boxofficeType;
  String showRange;
  List<BoxofficeDTOTable> dailyBoxOfficeList;

  BoxofficeResult({
    required this.boxofficeType,
    required this.showRange,
    required this.dailyBoxOfficeList,
  });

  factory BoxofficeResult.fromJson(dynamic json) =>
      BoxofficeResult(
        boxofficeType: json["boxofficeType"],
        showRange: json["showRange"],
        dailyBoxOfficeList: BoxofficeDTOTable.fromJsonList(json["dailyBoxOfficeList"]),
      );

}
