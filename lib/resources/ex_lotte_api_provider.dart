import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';

/**
 * 22.03.15
 * KiU
 * bloc example api provider
 */
class ExLotteApiProvider{

  Future<ExLotteItemModel> fetchLotteData(String drwNo) async {
    var response = await http.get(Uri.parse("http://www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=$drwNo"));

    // code 200 check logic
    // if(){
    //
    // } else {
    //     throw Exception('Failed to load post');
    // }
    ExLotteItemModel item = ExLotteItemModel.fromJson(jsonDecode(response.body));

    if(item.returnValue == "success") {
      print('@@@@@ ExLotteApiProvider fetchLotteData >> returnValue == success >> response : ${response.body}');
      return ExLotteItemModel.fromJson(jsonDecode(response.body));
    } else {
      print('@@@@@ ExLotteApiProvider fetchLotteData >> returnValue == fail');
      throw Exception('Failed to load post');
    }
  }

}