// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'crypto_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CryptoListModel _$CryptoListModelFromJson(Map<String, dynamic> json) {
  return _CryptoListModel.fromJson(json);
}

/// @nodoc
mixin _$CryptoListModel {
  List<CryptoNamesModel> get assets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CryptoListModelCopyWith<CryptoListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CryptoListModelCopyWith<$Res> {
  factory $CryptoListModelCopyWith(
          CryptoListModel value, $Res Function(CryptoListModel) then) =
      _$CryptoListModelCopyWithImpl<$Res, CryptoListModel>;
  @useResult
  $Res call({List<CryptoNamesModel> assets});
}

/// @nodoc
class _$CryptoListModelCopyWithImpl<$Res, $Val extends CryptoListModel>
    implements $CryptoListModelCopyWith<$Res> {
  _$CryptoListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
  }) {
    return _then(_value.copyWith(
      assets: null == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<CryptoNamesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CryptoListModelImplCopyWith<$Res>
    implements $CryptoListModelCopyWith<$Res> {
  factory _$$CryptoListModelImplCopyWith(_$CryptoListModelImpl value,
          $Res Function(_$CryptoListModelImpl) then) =
      __$$CryptoListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CryptoNamesModel> assets});
}

/// @nodoc
class __$$CryptoListModelImplCopyWithImpl<$Res>
    extends _$CryptoListModelCopyWithImpl<$Res, _$CryptoListModelImpl>
    implements _$$CryptoListModelImplCopyWith<$Res> {
  __$$CryptoListModelImplCopyWithImpl(
      _$CryptoListModelImpl _value, $Res Function(_$CryptoListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assets = null,
  }) {
    return _then(_$CryptoListModelImpl(
      assets: null == assets
          ? _value._assets
          : assets // ignore: cast_nullable_to_non_nullable
              as List<CryptoNamesModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CryptoListModelImpl implements _CryptoListModel {
  const _$CryptoListModelImpl({required final List<CryptoNamesModel> assets})
      : _assets = assets;

  factory _$CryptoListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CryptoListModelImplFromJson(json);

  final List<CryptoNamesModel> _assets;
  @override
  List<CryptoNamesModel> get assets {
    if (_assets is EqualUnmodifiableListView) return _assets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assets);
  }

  @override
  String toString() {
    return 'CryptoListModel(assets: $assets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CryptoListModelImpl &&
            const DeepCollectionEquality().equals(other._assets, _assets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_assets));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CryptoListModelImplCopyWith<_$CryptoListModelImpl> get copyWith =>
      __$$CryptoListModelImplCopyWithImpl<_$CryptoListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CryptoListModelImplToJson(
      this,
    );
  }
}

abstract class _CryptoListModel implements CryptoListModel {
  const factory _CryptoListModel(
      {required final List<CryptoNamesModel> assets}) = _$CryptoListModelImpl;

  factory _CryptoListModel.fromJson(Map<String, dynamic> json) =
      _$CryptoListModelImpl.fromJson;

  @override
  List<CryptoNamesModel> get assets;
  @override
  @JsonKey(ignore: true)
  _$$CryptoListModelImplCopyWith<_$CryptoListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
