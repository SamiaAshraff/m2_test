// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crypto_names_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CryptoNamesModelImpl _$$CryptoNamesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CryptoNamesModelImpl(
      asset: json['asset'] as String,
      marginAvailable: json['marginAvailable'] as bool,
      autoAssetExchange: json['autoAssetExchange'] as String,
      isFavourite: json['isFavourite'] as bool,
    );

Map<String, dynamic> _$$CryptoNamesModelImplToJson(
        _$CryptoNamesModelImpl instance) =>
    <String, dynamic>{
      'asset': instance.asset,
      'marginAvailable': instance.marginAvailable,
      'autoAssetExchange': instance.autoAssetExchange,
      'isFavourite': instance.isFavourite,
    };
