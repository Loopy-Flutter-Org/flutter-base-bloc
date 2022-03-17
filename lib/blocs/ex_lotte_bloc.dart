import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';
import 'package:loopy_base_bloc/resources/ex_lotte_repository.dart';
import 'package:rxdart/rxdart.dart';


/**
 * 22.03.15
 * KiU
 * bloc example
 */
class ExLotteBloc {
  final _repository = ExLotteRepository();
  final _lotteFetcher = PublishSubject<ExLotteItemModel>();
  ExLotteItemModel? lotteResult;

  Stream<ExLotteItemModel> get allLotte => _lotteFetcher.stream;

  fetchAllLotte(String drwNo) async {
    ExLotteItemModel itemLotte = await _repository.fetchLotte(drwNo);
    _lotteFetcher.sink.add(itemLotte);
    lotteResult = itemLotte;
  }

  dispose() {
    _lotteFetcher.close();
  }

}

final exLotteBloc = ExLotteBloc();