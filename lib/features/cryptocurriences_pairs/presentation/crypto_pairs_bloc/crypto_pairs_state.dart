part of 'crypto_pairs_bloc.dart';

@freezed
class CryptoPairsState with _$CryptoPairsState {
  const factory CryptoPairsState.initial() = _Initial;

  const factory CryptoPairsState.loading() = _Loading;
  const factory CryptoPairsState.loadSuccess(
      List<String> cryptoPairsList) = _LoadSuccess;
  const factory CryptoPairsState.loadFailure(String failure) = _LoadFailure;
}
