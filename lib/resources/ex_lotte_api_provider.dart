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

  Future<ExLotteItemModel> fetchLotteData() async {
    var response = await http.get(Uri.parse("www.dhlottery.co.kr/common.do?method=getLottoNumber&drwNo=100"));

    // code 200 check logic
    // if(){
    //
    // } else {
    //     throw Exception('Failed to load post');
    // }

    return ExLotteItemModel.fromJson(jsonDecode(response.body));
  }

}