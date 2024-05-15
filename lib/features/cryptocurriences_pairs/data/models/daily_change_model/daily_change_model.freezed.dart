// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'daily_change_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DailyChangeModel _$DailyChangeModelFromJson(Map<String, dynamic> json) {
  return _DailyChangeModel.fromJson(json);
}

/// @nodoc
mixin _$DailyChangeModel {
  String get cryptoName => throw _privateConstructorUsedError;
  String get priceChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DailyChangeModelCopyWith<DailyChangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DailyChangeModelCopyWith<$Res> {
  factory $DailyChangeModelCopyWith(
          DailyChangeModel value, $Res Function(DailyChangeModel) then) =
      _$DailyChangeModelCopyWithImpl<$Res, DailyChangeModel>;
  @useResult
  $Res call({String cryptoName, String priceChange});
}

/// @nodoc
class _$DailyChangeModelCopyWithImpl<$Res, $Val extends DailyChangeModel>
    implements $DailyChangeModelCopyWith<$Res> {
  _$DailyChangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoName = null,
    Object? priceChange = null,
  }) {
    return _then(_value.copyWith(
      cryptoName: null == cryptoName
          ? _value.cryptoName
          : cryptoName // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DailyChangeModelImplCopyWith<$Res>
    implements $DailyChangeModelCopyWith<$Res> {
  factory _$$DailyChangeModelImplCopyWith(_$DailyChangeModelImpl value,
          $Res Function(_$DailyChangeModelImpl) then) =
      __$$DailyChangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String cryptoName, String priceChange});
}

/// @nodoc
class __$$DailyChangeModelImplCopyWithImpl<$Res>
    extends _$DailyChangeModelCopyWithImpl<$Res, _$DailyChangeModelImpl>
    implements _$$DailyChangeModelImplCopyWith<$Res> {
  __$$DailyChangeModelImplCopyWithImpl(_$DailyChangeModelImpl _value,
      $Res Function(_$DailyChangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cryptoName = null,
    Object? priceChange = null,
  }) {
    return _then(_$DailyChangeModelImpl(
      cryptoName: null == cryptoName
          ? _value.cryptoName
          : cryptoName // ignore: cast_nullable_to_non_nullable
              as String,
      priceChange: null == priceChange
          ? _value.priceChange
          : priceChange // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DailyChangeModelImpl implements _DailyChangeModel {
  const _$DailyChangeModelImpl(
      {required this.cryptoName, required this.priceChange});

  factory _$DailyChangeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DailyChangeModelImplFromJson(json);

  @override
  final String cryptoName;
  @override
  final String priceChange;

  @override
  String toString() {
    return 'DailyChangeModel(cryptoName: $cryptoName, priceChange: $priceChange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DailyChangeModelImpl &&
            (identical(other.cryptoName, cryptoName) ||
                other.cryptoName == cryptoName) &&
            (identical(other.priceChange, priceChange) ||
                other.priceChange == priceChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cryptoName, priceChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DailyChangeModelImplCopyWith<_$DailyChangeModelImpl> get copyWith =>
      __$$DailyChangeModelImplCopyWithImpl<_$DailyChangeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyChangeModelImplToJson(
      this,
    );
  }
}

abstract class _DailyChangeModel implements DailyChangeModel {
  const factory _DailyChangeModel(
      {required final String cryptoName,
      required final String priceChange}) = _$DailyChangeModelImpl;

  factory _DailyChangeModel.fromJson(Map<String, dynamic> json) =
      _$DailyChangeModelImpl.fromJson;

  @override
  String get cryptoName;
  @override
  String get priceChange;
  @override
  @JsonKey(ignore: true)
  _$$DailyChangeModelImplCopyWith<_$DailyChangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
