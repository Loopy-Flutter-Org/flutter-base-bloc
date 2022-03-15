
/**
 * 22.03.15
 * KiU
 * bloc example item model
 * POJO 클래스 (Plain Old Java Object - getter/setter 를 가지고 있는 단순 JavaObject)
 */
class ExLotteItemModel {
  late String _returnValue;
  late String _drwNoDate;
  late String _totSellamnt;
  late String _firstWinamnt;
  late String _firstPrzwnerCo;
  late String _drwtNo1;
  late String _drwtNo2;
  late String _drwtNo3;
  late String _drwtNo4;
  late String _drwtNo5;
  late String _drwtNo6;
  late String _bnusNo;
  late String _drwNo;

  ExLotteItemModel.fromJson(Map<String, dynamic> json) {
    _returnValue = json["returnValue"];
    _drwNoDate = json["drwNoDate"];
    _totSellamnt = json["totSellamnt"];
    _firstWinamnt = json["firstWinamnt"];
    _firstPrzwnerCo = json["firstPrzwnerCo"];
    _drwtNo1 = json["drwtNo1"];
    _drwtNo2 = json["drwtNo2"];
    _drwtNo3 = json["drwtNo3"];
    _drwtNo4 = json["drwtNo4"];
    _drwtNo5 = json["drwtNo5"];
    _drwtNo6 = json["drwtNo6"];
    _bnusNo = json["bnusNo"];
    _drwNo = json["drwNo"];
  }

  String get drwNo => _drwNo;

  String get bnusNo => _bnusNo;

  String get drwtNo6 => _drwtNo6;

  String get drwtNo5 => _drwtNo5;

  String get drwtNo4 => _drwtNo4;

  String get drwtNo3 => _drwtNo3;

  String get drwtNo2 => _drwtNo2;

  String get drwtNo1 => _drwtNo1;

  String get firstPrzwnerCo => _firstPrzwnerCo;

  String get firstWinamnt => _firstWinamnt;

  String get totSellamnt => _totSellamnt;

  String get drwNoDate => _drwNoDate;

  String get returnValue => _returnValue;
}