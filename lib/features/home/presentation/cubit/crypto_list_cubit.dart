
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m2_test/constants/endpoints.dart';
import 'package:m2_test/features/home/data/crypto_list_model/crypto_list_model.dart';
import 'package:m2_test/features/home/data/crypto_names_model/crypto_names_model.dart';

part 'crypto_list_state.dart';
part 'crypto_list_cubit.freezed.dart';

class CryptoListCubit extends Cubit<CryptoListState> {
  CryptoListCubit() : super(CryptoListState.initial());

  // List favourites = [];
final List<CryptoNamesModel> cryptoList = [];
  fetchCryptoList() async {
    try {
      emit(const CryptoListState.loading());
      Dio dio = Dio();
      Response response = await dio.get(APIConstants.exchangeInfo);
      // log(response.toString());
      final cryptoListData = response.data['assets'] as List;
      

      cryptoListData.map((e) {
        cryptoList.add(CryptoNamesModel(
            asset: e['asset'],
            marginAvailable: e['marginAvailable'],
            autoAssetExchange: e['autoAssetExchange'],
            isFavourite: false));
      }).toList();
      final CryptoListModel model = CryptoListModel(assets: cryptoList);
      emit(CryptoListState.success(model));
    } catch (e) {
      emit(
        CryptoListState.error("Error loading users: ${e.toString()}"),
      );
    }
  }

  markFavourite(int index) {
    // favourites.add(index);
  }
}
