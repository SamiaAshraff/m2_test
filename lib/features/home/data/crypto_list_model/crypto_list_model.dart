import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m2_test/features/home/data/crypto_names_model/crypto_names_model.dart';

part 'crypto_list_model.freezed.dart';
part 'crypto_list_model.g.dart';

@freezed
class CryptoListModel with _$CryptoListModel {
  const factory CryptoListModel({
    required List<CryptoNamesModel> assets,
  }) = _CryptoListModel;

  factory CryptoListModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoListModelFromJson(json);
}
