// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeState {
  Status get status => throw _privateConstructorUsedError;
  Status get getFiatToCryptoExchangestatus =>
      throw _privateConstructorUsedError;
  String get selectedFiatType => throw _privateConstructorUsedError;
  String get selectedCryptoType => throw _privateConstructorUsedError;
  int get exchangeType => throw _privateConstructorUsedError;
  byPriceModel? get byPrice => throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Status status,
      Status getFiatToCryptoExchangestatus,
      String selectedFiatType,
      String selectedCryptoType,
      int exchangeType,
      byPriceModel? byPrice});

  $byPriceModelCopyWith<$Res>? get byPrice;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getFiatToCryptoExchangestatus = null,
    Object? selectedFiatType = null,
    Object? selectedCryptoType = null,
    Object? exchangeType = null,
    Object? byPrice = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      getFiatToCryptoExchangestatus: null == getFiatToCryptoExchangestatus
          ? _value.getFiatToCryptoExchangestatus
          : getFiatToCryptoExchangestatus // ignore: cast_nullable_to_non_nullable
              as Status,
      selectedFiatType: null == selectedFiatType
          ? _value.selectedFiatType
          : selectedFiatType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCryptoType: null == selectedCryptoType
          ? _value.selectedCryptoType
          : selectedCryptoType // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeType: null == exchangeType
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as int,
      byPrice: freezed == byPrice
          ? _value.byPrice
          : byPrice // ignore: cast_nullable_to_non_nullable
              as byPriceModel?,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $byPriceModelCopyWith<$Res>? get byPrice {
    if (_value.byPrice == null) {
      return null;
    }

    return $byPriceModelCopyWith<$Res>(_value.byPrice!, (value) {
      return _then(_value.copyWith(byPrice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Status status,
      Status getFiatToCryptoExchangestatus,
      String selectedFiatType,
      String selectedCryptoType,
      int exchangeType,
      byPriceModel? byPrice});

  @override
  $byPriceModelCopyWith<$Res>? get byPrice;
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? getFiatToCryptoExchangestatus = null,
    Object? selectedFiatType = null,
    Object? selectedCryptoType = null,
    Object? exchangeType = null,
    Object? byPrice = freezed,
  }) {
    return _then(_$HomeStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      getFiatToCryptoExchangestatus: null == getFiatToCryptoExchangestatus
          ? _value.getFiatToCryptoExchangestatus
          : getFiatToCryptoExchangestatus // ignore: cast_nullable_to_non_nullable
              as Status,
      selectedFiatType: null == selectedFiatType
          ? _value.selectedFiatType
          : selectedFiatType // ignore: cast_nullable_to_non_nullable
              as String,
      selectedCryptoType: null == selectedCryptoType
          ? _value.selectedCryptoType
          : selectedCryptoType // ignore: cast_nullable_to_non_nullable
              as String,
      exchangeType: null == exchangeType
          ? _value.exchangeType
          : exchangeType // ignore: cast_nullable_to_non_nullable
              as int,
      byPrice: freezed == byPrice
          ? _value.byPrice
          : byPrice // ignore: cast_nullable_to_non_nullable
              as byPriceModel?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {this.status = Status.initial,
      this.getFiatToCryptoExchangestatus = Status.initial,
      this.selectedFiatType = 'VES',
      this.selectedCryptoType = 'USDT',
      this.exchangeType = 0,
      this.byPrice});

  @override
  @JsonKey()
  final Status status;
  @override
  @JsonKey()
  final Status getFiatToCryptoExchangestatus;
  @override
  @JsonKey()
  final String selectedFiatType;
  @override
  @JsonKey()
  final String selectedCryptoType;
  @override
  @JsonKey()
  final int exchangeType;
  @override
  final byPriceModel? byPrice;

  @override
  String toString() {
    return 'HomeState(status: $status, getFiatToCryptoExchangestatus: $getFiatToCryptoExchangestatus, selectedFiatType: $selectedFiatType, selectedCryptoType: $selectedCryptoType, exchangeType: $exchangeType, byPrice: $byPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.getFiatToCryptoExchangestatus,
                    getFiatToCryptoExchangestatus) ||
                other.getFiatToCryptoExchangestatus ==
                    getFiatToCryptoExchangestatus) &&
            (identical(other.selectedFiatType, selectedFiatType) ||
                other.selectedFiatType == selectedFiatType) &&
            (identical(other.selectedCryptoType, selectedCryptoType) ||
                other.selectedCryptoType == selectedCryptoType) &&
            (identical(other.exchangeType, exchangeType) ||
                other.exchangeType == exchangeType) &&
            (identical(other.byPrice, byPrice) || other.byPrice == byPrice));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      getFiatToCryptoExchangestatus,
      selectedFiatType,
      selectedCryptoType,
      exchangeType,
      byPrice);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {final Status status,
      final Status getFiatToCryptoExchangestatus,
      final String selectedFiatType,
      final String selectedCryptoType,
      final int exchangeType,
      final byPriceModel? byPrice}) = _$HomeStateImpl;

  @override
  Status get status;
  @override
  Status get getFiatToCryptoExchangestatus;
  @override
  String get selectedFiatType;
  @override
  String get selectedCryptoType;
  @override
  int get exchangeType;
  @override
  byPriceModel? get byPrice;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
