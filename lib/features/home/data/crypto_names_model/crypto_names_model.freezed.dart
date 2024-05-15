// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_names_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoNamesModel _$CryptoNamesModelFromJson(Map<String, dynamic> json) {
  return _CryptoNamesModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoNamesModel {
  String get asset => throw _privateConstructorUsedError;
  bool get marginAvailable => throw _privateConstructorUsedError;
  String get autoAssetExchange => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoNamesModelCopyWith<CryptoNamesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoNamesModelCopyWith<$Res> {
  factory $CryptoNamesModelCopyWith(
          CryptoNamesModel value, $Res Function(CryptoNamesModel) then) =
      _$CryptoNamesModelCopyWithImpl<$Res, CryptoNamesModel>;
  @useResult
  $Res call(
      {String asset,
      bool marginAvailable,
      String autoAssetExchange,
      bool isFavourite});
}

/// @nodoc
class _$CryptoNamesModelCopyWithImpl<$Res, $Val extends CryptoNamesModel>
    implements $CryptoNamesModelCopyWith<$Res> {
  _$CryptoNamesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? marginAvailable = null,
    Object? autoAssetExchange = null,
    Object? isFavourite = null,
  }) {
    return _then(_value.copyWith(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      marginAvailable: null == marginAvailable
          ? _value.marginAvailable
          : marginAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      autoAssetExchange: null == autoAssetExchange
          ? _value.autoAssetExchange
          : autoAssetExchange // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoNamesModelImplCopyWith<$Res>
    implements $CryptoNamesModelCopyWith<$Res> {
  factory _$$CryptoNamesModelImplCopyWith(_$CryptoNamesModelImpl value,
          $Res Function(_$CryptoNamesModelImpl) then) =
      __$$CryptoNamesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String asset,
      bool marginAvailable,
      String autoAssetExchange,
      bool isFavourite});
}

/// @nodoc
class __$$CryptoNamesModelImplCopyWithImpl<$Res>
    extends _$CryptoNamesModelCopyWithImpl<$Res, _$CryptoNamesModelImpl>
    implements _$$CryptoNamesModelImplCopyWith<$Res> {
  __$$CryptoNamesModelImplCopyWithImpl(_$CryptoNamesModelImpl _value,
      $Res Function(_$CryptoNamesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? asset = null,
    Object? marginAvailable = null,
    Object? autoAssetExchange = null,
    Object? isFavourite = null,
  }) {
    return _then(_$CryptoNamesModelImpl(
      asset: null == asset
          ? _value.asset
          : asset // ignore: cast_nullable_to_non_nullable
              as String,
      marginAvailable: null == marginAvailable
          ? _value.marginAvailable
          : marginAvailable // ignore: cast_nullable_to_non_nullable
              as bool,
      autoAssetExchange: null == autoAssetExchange
          ? _value.autoAssetExchange
          : autoAssetExchange // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: null == isFavourite
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoNamesModelImpl implements _CryptoNamesModel {
  const _$CryptoNamesModelImpl(
      {required this.asset,
      required this.marginAvailable,
      required this.autoAssetExchange,
      required this.isFavourite});

  factory _$CryptoNamesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoNamesModelImplFromJson(json);

  @override
  final String asset;
  @override
  final bool marginAvailable;
  @override
  final String autoAssetExchange;
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'CryptoNamesModel(asset: $asset, marginAvailable: $marginAvailable, autoAssetExchange: $autoAssetExchange, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoNamesModelImpl &&
            (identical(other.asset, asset) || other.asset == asset) &&
            (identical(other.marginAvailable, marginAvailable) ||
                other.marginAvailable == marginAvailable) &&
            (identical(other.autoAssetExchange, autoAssetExchange) ||
                other.autoAssetExchange == autoAssetExchange) &&
            (identical(other.isFavourite, isFavourite) ||
                other.isFavourite == isFavourite));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, asset, marginAvailable, autoAssetExchange, isFavourite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoNamesModelImplCopyWith<_$CryptoNamesModelImpl> get copyWith =>
      __$$CryptoNamesModelImplCopyWithImpl<_$CryptoNamesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoNamesModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoNamesModel implements CryptoNamesModel {
  const factory _CryptoNamesModel(
      {required final String asset,
      required final bool marginAvailable,
      required final String autoAssetExchange,
      required final bool isFavourite}) = _$CryptoNamesModelImpl;

  factory _CryptoNamesModel.fromJson(Map<String, dynamic> json) =
      _$CryptoNamesModelImpl.fromJson;

  @override
  String get asset;
  @override
  bool get marginAvailable;
  @override
  String get autoAssetExchange;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$$CryptoNamesModelImplCopyWith<_$CryptoNamesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
