import 'package:dartz/dartz.dart';
import 'package:m2_test/features/home/data/crypto_list_model/crypto_list_model.dart';

abstract class ICryptoNamesRepo {
  Future<Either<String, CryptoListModel>> getCryptoNames();
  Future<Either<String, List<String>>> getCryptoPairs({int pageNo});
}
