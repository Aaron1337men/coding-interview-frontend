// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recomendations_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecomendationsRequestDTO _$RecomendationsRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _RecomendationsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$RecomendationsRequestDTO {
  int get type => throw _privateConstructorUsedError;
  String get cryptoCurrencyId => throw _privateConstructorUsedError;
  String get fiatCurrencyId => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String get amountCurrencyId => throw _privateConstructorUsedError;

  /// Serializes this RecomendationsRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecomendationsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecomendationsRequestDTOCopyWith<RecomendationsRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendationsRequestDTOCopyWith<$Res> {
  factory $RecomendationsRequestDTOCopyWith(RecomendationsRequestDTO value,
          $Res Function(RecomendationsRequestDTO) then) =
      _$RecomendationsRequestDTOCopyWithImpl<$Res, RecomendationsRequestDTO>;
  @useResult
  $Res call(
      {int type,
      String cryptoCurrencyId,
      String fiatCurrencyId,
      double amount,
      String amountCurrencyId});
}

/// @nodoc
class _$RecomendationsRequestDTOCopyWithImpl<$Res,
        $Val extends RecomendationsRequestDTO>
    implements $RecomendationsRequestDTOCopyWith<$Res> {
  _$RecomendationsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecomendationsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? cryptoCurrencyId = null,
    Object? fiatCurrencyId = null,
    Object? amount = null,
    Object? amountCurrencyId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      cryptoCurrencyId: null == cryptoCurrencyId
          ? _value.cryptoCurrencyId
          : cryptoCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrencyId: null == fiatCurrencyId
          ? _value.fiatCurrencyId
          : fiatCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      amountCurrencyId: null == amountCurrencyId
          ? _value.amountCurrencyId
          : amountCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecomendationsRequestDTOImplCopyWith<$Res>
    implements $RecomendationsRequestDTOCopyWith<$Res> {
  factory _$$RecomendationsRequestDTOImplCopyWith(
          _$RecomendationsRequestDTOImpl value,
          $Res Function(_$RecomendationsRequestDTOImpl) then) =
      __$$RecomendationsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int type,
      String cryptoCurrencyId,
      String fiatCurrencyId,
      double amount,
      String amountCurrencyId});
}

/// @nodoc
class __$$RecomendationsRequestDTOImplCopyWithImpl<$Res>
    extends _$RecomendationsRequestDTOCopyWithImpl<$Res,
        _$RecomendationsRequestDTOImpl>
    implements _$$RecomendationsRequestDTOImplCopyWith<$Res> {
  __$$RecomendationsRequestDTOImplCopyWithImpl(
      _$RecomendationsRequestDTOImpl _value,
      $Res Function(_$RecomendationsRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecomendationsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? cryptoCurrencyId = null,
    Object? fiatCurrencyId = null,
    Object? amount = null,
    Object? amountCurrencyId = null,
  }) {
    return _then(_$RecomendationsRequestDTOImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      cryptoCurrencyId: null == cryptoCurrencyId
          ? _value.cryptoCurrencyId
          : cryptoCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      fiatCurrencyId: null == fiatCurrencyId
          ? _value.fiatCurrencyId
          : fiatCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      amountCurrencyId: null == amountCurrencyId
          ? _value.amountCurrencyId
          : amountCurrencyId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendationsRequestDTOImpl extends _RecomendationsRequestDTO {
  const _$RecomendationsRequestDTOImpl(
      {required this.type,
      required this.cryptoCurrencyId,
      required this.fiatCurrencyId,
      required this.amount,
      required this.amountCurrencyId})
      : super._();

  factory _$RecomendationsRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendationsRequestDTOImplFromJson(json);

  @override
  final int type;
  @override
  final String cryptoCurrencyId;
  @override
  final String fiatCurrencyId;
  @override
  final double amount;
  @override
  final String amountCurrencyId;

  @override
  String toString() {
    return 'RecomendationsRequestDTO(type: $type, cryptoCurrencyId: $cryptoCurrencyId, fiatCurrencyId: $fiatCurrencyId, amount: $amount, amountCurrencyId: $amountCurrencyId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendationsRequestDTOImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.cryptoCurrencyId, cryptoCurrencyId) ||
                other.cryptoCurrencyId == cryptoCurrencyId) &&
            (identical(other.fiatCurrencyId, fiatCurrencyId) ||
                other.fiatCurrencyId == fiatCurrencyId) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.amountCurrencyId, amountCurrencyId) ||
                other.amountCurrencyId == amountCurrencyId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, cryptoCurrencyId,
      fiatCurrencyId, amount, amountCurrencyId);

  /// Create a copy of RecomendationsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendationsRequestDTOImplCopyWith<_$RecomendationsRequestDTOImpl>
      get copyWith => __$$RecomendationsRequestDTOImplCopyWithImpl<
          _$RecomendationsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendationsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _RecomendationsRequestDTO extends RecomendationsRequestDTO {
  const factory _RecomendationsRequestDTO(
      {required final int type,
      required final String cryptoCurrencyId,
      required final String fiatCurrencyId,
      required final double amount,
      required final String amountCurrencyId}) = _$RecomendationsRequestDTOImpl;
  const _RecomendationsRequestDTO._() : super._();

  factory _RecomendationsRequestDTO.fromJson(Map<String, dynamic> json) =
      _$RecomendationsRequestDTOImpl.fromJson;

  @override
  int get type;
  @override
  String get cryptoCurrencyId;
  @override
  String get fiatCurrencyId;
  @override
  double get amount;
  @override
  String get amountCurrencyId;

  /// Create a copy of RecomendationsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecomendationsRequestDTOImplCopyWith<_$RecomendationsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RecomendationsResponseDTO _$RecomendationsResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _RecomendationsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RecomendationsResponseDTO {
  bool get success => throw _privateConstructorUsedError;
  byPriceModel? get result => throw _privateConstructorUsedError;

  /// Serializes this RecomendationsResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecomendationsResponseDTOCopyWith<RecomendationsResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecomendationsResponseDTOCopyWith<$Res> {
  factory $RecomendationsResponseDTOCopyWith(RecomendationsResponseDTO value,
          $Res Function(RecomendationsResponseDTO) then) =
      _$RecomendationsResponseDTOCopyWithImpl<$Res, RecomendationsResponseDTO>;
  @useResult
  $Res call({bool success, byPriceModel? result});

  $byPriceModelCopyWith<$Res>? get result;
}

/// @nodoc
class _$RecomendationsResponseDTOCopyWithImpl<$Res,
        $Val extends RecomendationsResponseDTO>
    implements $RecomendationsResponseDTOCopyWith<$Res> {
  _$RecomendationsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as byPriceModel?,
    ) as $Val);
  }

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $byPriceModelCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $byPriceModelCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecomendationsResponseDTOImplCopyWith<$Res>
    implements $RecomendationsResponseDTOCopyWith<$Res> {
  factory _$$RecomendationsResponseDTOImplCopyWith(
          _$RecomendationsResponseDTOImpl value,
          $Res Function(_$RecomendationsResponseDTOImpl) then) =
      __$$RecomendationsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, byPriceModel? result});

  @override
  $byPriceModelCopyWith<$Res>? get result;
}

/// @nodoc
class __$$RecomendationsResponseDTOImplCopyWithImpl<$Res>
    extends _$RecomendationsResponseDTOCopyWithImpl<$Res,
        _$RecomendationsResponseDTOImpl>
    implements _$$RecomendationsResponseDTOImplCopyWith<$Res> {
  __$$RecomendationsResponseDTOImplCopyWithImpl(
      _$RecomendationsResponseDTOImpl _value,
      $Res Function(_$RecomendationsResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? result = freezed,
  }) {
    return _then(_$RecomendationsResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as byPriceModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecomendationsResponseDTOImpl implements _RecomendationsResponseDTO {
  const _$RecomendationsResponseDTOImpl({this.success = false, this.result});

  factory _$RecomendationsResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecomendationsResponseDTOImplFromJson(json);

  @override
  @JsonKey()
  final bool success;
  @override
  final byPriceModel? result;

  @override
  String toString() {
    return 'RecomendationsResponseDTO(success: $success, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecomendationsResponseDTOImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, success, result);

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecomendationsResponseDTOImplCopyWith<_$RecomendationsResponseDTOImpl>
      get copyWith => __$$RecomendationsResponseDTOImplCopyWithImpl<
          _$RecomendationsResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecomendationsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _RecomendationsResponseDTO implements RecomendationsResponseDTO {
  const factory _RecomendationsResponseDTO(
      {final bool success,
      final byPriceModel? result}) = _$RecomendationsResponseDTOImpl;

  factory _RecomendationsResponseDTO.fromJson(Map<String, dynamic> json) =
      _$RecomendationsResponseDTOImpl.fromJson;

  @override
  bool get success;
  @override
  byPriceModel? get result;

  /// Create a copy of RecomendationsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecomendationsResponseDTOImplCopyWith<_$RecomendationsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
