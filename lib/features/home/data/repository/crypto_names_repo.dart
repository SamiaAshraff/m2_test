import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:m2_test/constants/endpoints.dart';
import 'package:m2_test/features/home/data/crypto_list_model/crypto_list_model.dart';
import 'package:m2_test/features/home/data/crypto_names_model/crypto_names_model.dart';
import 'package:m2_test/features/home/data/repository/i_crypto_names_repo.dart';

@LazySingleton(as: ICryptoNamesRepo)
class CryptoNamesRepo implements ICryptoNamesRepo {
  @override
  Future<Either<String, CryptoListModel>> getCryptoNames() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(APIConstants.exchangeInfo);
      // log(response.toString());
      final cryptoListData = response.data['assets'] as List;
      final List<CryptoNamesModel> cryptoList = [];

      cryptoListData.map((e) {
        cryptoList.add(CryptoNamesModel(
            asset: e['asset'],
            marginAvailable: e['marginAvailable'],
            autoAssetExchange: e['autoAssetExchange'],
            isFavourite: false));
      }).toList();
      final CryptoListModel model = CryptoListModel(assets: cryptoList);
      return right(model);
    } catch (e) {
      return left(
        ("Error loading users: ${e.toString()}"),
      );
    }
  }

  @override
  Future<Either<String, List<String>>> getCryptoPairs({int? pageNo}) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(APIConstants.exchangeInfo);
      // log(response.toString());
      final cryptoPairsListData = response.data['symbols'] as List;
      final List<String> cryptoPairsList = [];

      for (int i = 0 + (25 * pageNo!); i < 25 + (25 * pageNo); i++) {
        cryptoPairsList.add(cryptoPairsListData[i]['pair']);
      }
      // cryptoPairsListData.map((e) {
      //   cryptoPairsList.add(e['pair']);
      // }).toList();
      return right(cryptoPairsList);
    } catch (e) {
      return left(
        ("Error loading users: ${e.toString()}"),
      );
    }
  }
}
