import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:m2_test/constants/endpoints.dart';
import 'package:m2_test/features/cryptocurriences_pairs/data/models/daily_change_model/daily_change_model.dart';
import 'package:m2_test/features/cryptocurriences_pairs/data/repository/i_crypto_currency_pairs_repo.dart';

@LazySingleton(as: ICryptoCurrencyPairsRepo)
class CryptoCurrencyPairsRepo implements ICryptoCurrencyPairsRepo {
  

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

  @override
  Future<Either<String, List<DailyChangeModel>>> get24hrChange(
      {required String cryptoName}) async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(APIConstants.daily24Change);
      final responseData = response.data as List;
      final List<DailyChangeModel> dailyPriceChange = [];

      responseData.map((e) => dailyPriceChange.add(DailyChangeModel(
          cryptoName: e['symbol'], priceChange: e['priceChangePercent'])));

      return right(dailyPriceChange);
    } catch (e) {
      return left(
        ("Error loading users: ${e.toString()}"),
      );
    }
  }
}
