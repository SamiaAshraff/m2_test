import 'package:freezed_annotation/freezed_annotation.dart';

part 'crypto_names_model.freezed.dart';
part 'crypto_names_model.g.dart';

@freezed
class CryptoNamesModel with _$CryptoNamesModel {
  const factory CryptoNamesModel({
    required String asset,
    required bool marginAvailable,
    required String autoAssetExchange,
    required bool isFavourite,
  }) = _CryptoNamesModel;

  factory CryptoNamesModel.fromJson(Map<String, dynamic> json) =>
      _$CryptoNamesModelFromJson(json);
}
