import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';
import 'package:loopy_base_bloc/resources/ex_lotte_repository.dart';
import 'package:rxdart/rxdart.dart';


/**
 * 22.03.15
 * KiU
 * bloc example
 */
class ExLotteBloc{
  final _repository = ExLotteRepository();
  final _lotteFetcher = PublishSubject<ExLotteItemModel>();

  Stream<ExLotteItemModel> get allLotte => _lotteFetcher.stream;

  fetchAllLotte() async {
    ExLotteItemModel itemLotte = await _repository.fetchLotte();
    _lotteFetcher.sink.add(itemLotte);
  }

  dispose() {
    _lotteFetcher.close();
  }
}

final exLotteBloc = ExLotteBloc();