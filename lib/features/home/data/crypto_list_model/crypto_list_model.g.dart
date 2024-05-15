// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoListModelImpl _$$CryptoListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoListModelImpl(
      assets: (json['assets'] as List<dynamic>)
          .map((e) => CryptoNamesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CryptoListModelImplToJson(
        _$CryptoListModelImpl instance) =>
    <String, dynamic>{
      'assets': instance.assets,
    };
