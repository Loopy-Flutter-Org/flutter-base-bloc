
/**
 * 22.03.15
 * KiU
 * bloc example item model
 * POJO 클래스 (Plain Old Java Object - getter/setter 를 가지고 있는 단순 JavaObject)
 */
class ExLotteItemModel {
  late String _returnValue;
  late String _drwNoDate;
  late int _totSellamnt;
  late int _firstWinamnt;
  late int _firstPrzwnerCo;
  late int _drwtNo1;
  late int _drwtNo2;
  late int _drwtNo3;
  late int _drwtNo4;
  late int _drwtNo5;
  late int _drwtNo6;
  late int _bnusNo;
  late int _drwNo;


  ExLotteItemModel(
      this._returnValue,
      this._drwNoDate,
      this._totSellamnt,
      this._firstWinamnt,
      this._firstPrzwnerCo,
      this._drwtNo1,
      this._drwtNo2,
      this._drwtNo3,
      this._drwtNo4,
      this._drwtNo5,
      this._drwtNo6,
      this._bnusNo,
      this._drwNo);

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

  int get drwNo => _drwNo;

  int get bnusNo => _bnusNo;

  int get drwtNo6 => _drwtNo6;

  int get drwtNo5 => _drwtNo5;

  int get drwtNo4 => _drwtNo4;

  int get drwtNo3 => _drwtNo3;

  int get drwtNo2 => _drwtNo2;

  int get drwtNo1 => _drwtNo1;

  int get firstPrzwnerCo => _firstPrzwnerCo;

  int get firstWinamnt => _firstWinamnt;

  int get totSellamnt => _totSellamnt;

  String get drwNoDate => _drwNoDate;

  String get returnValue => _returnValue;
}