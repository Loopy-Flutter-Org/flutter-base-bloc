import 'package:flutter/material.dart';
import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';

/**
 * 22.03.16
 * KiU
 * bloc example
 * 공통 위젯은 따로 빼둘까?? 위젯도 상속 개념이 있으까?? 나머지 페이지나 플러터 상속에 대해 찾아봐야겠다...
 */

Widget lotteResultWidget(ExLotteItemModel? snapshot) {

  if(snapshot == null) {
    print('@@@@@@ [LotteResultWidget] snapshot.data == null');
    return Container();
  } else {
    print('@@@@@@ [LotteResultWidget] snapshot.data != null  : $snapshot');
    ExLotteItemModel result = snapshot!;
    return Center(
      child: Text("[ result ]  \ndrwNo : ${result.drwNo.toString()}\ndrwNoData : ${result.drwNoDate}", textScaleFactor: 2,),
    );
  }

}