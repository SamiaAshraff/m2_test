import 'package:dartz/dartz.dart';
import 'package:m2_test/features/cryptocurriences_pairs/data/models/daily_change_model/daily_change_model.dart';
import 'package:m2_test/features/home/data/crypto_list_model/crypto_list_model.dart';

abstract class ICryptoCurrencyPairsRepo {
  Future<Either<String, List<String>>> getCryptoPairs({int pageNo});
  Future<Either<String, List<DailyChangeModel>>> get24hrChange({required String cryptoName});
}
