
import 'package:loopy_base_bloc/models/ex_lotte_item_model.dart';
import 'package:loopy_base_bloc/resources/ex_lotte_api_provider.dart';

/**
 * 22.03.15
 * KiU
 * bloc example repository
 * Repository 클래스는 데이터가 BLOC로 전달되는 중심점.
 */

class ExLotteRepository {
  final lotteProvider = ExLotteApiProvider();

  Future<ExLotteItemModel> fetchLotte() => lotteProvider.fetchLotteData();
}