import 'package:flutter/material.dart';
import 'package:flutter_boxoffiice/post/dto/boxoffice_dto.dart';
import 'package:flutter_boxoffiice/post/repository/boxoffice_repository.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ListPage extends HookWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listState = useState<BoxofficeResult?>(null);

    useEffect(() {
      BoxofficeRepository.instance.getDTOList().then((value) {
        listState.value = value;
      });
    }, []);

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(listState.value?.boxofficeType ?? ""),
              Divider(height: 1.0,color: Colors.black,thickness: 1.0),
              Text(listState.value?.showRange ?? ""),
              Expanded(
                child: ListView(
                  children: listState.value?.dailyBoxOfficeList.map((e) => ListItem(boxofficeDTOTable: e)).toList() ?? [],
                ),
              ),
            ],
          )
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  BoxofficeDTOTable boxofficeDTOTable;
  ListItem({Key? key, required this.boxofficeDTOTable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black)),
      child: Column(
        children: [
          Divider(),
          Text("랭킹 : ${boxofficeDTOTable.rank}"),
          Divider(),
          Text("관객 수 : ${boxofficeDTOTable.audiCnt}"),
          Divider(),
          Text("영화 이름 : ${boxofficeDTOTable.movieNm}"),
          Divider(),
          Text("개봉 일 : ${boxofficeDTOTable.openDt}"),
        ],
      ),
    );
  }
}

