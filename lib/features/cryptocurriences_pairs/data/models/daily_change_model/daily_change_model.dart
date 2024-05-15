import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m2_test/features/home/data/crypto_names_model/crypto_names_model.dart';

part 'daily_change_model.freezed.dart';
part 'daily_change_model.g.dart';

@freezed
class DailyChangeModel with _$DailyChangeModel {
  const factory DailyChangeModel({
    required String cryptoName,
    required String priceChange,
  }) = _DailyChangeModel;

  factory DailyChangeModel.fromJson(Map<String, dynamic> json) =>
      _$DailyChangeModelFromJson(json);
}
