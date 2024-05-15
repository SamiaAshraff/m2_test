part of 'crypto_names_bloc.dart';

@freezed
class CryptoNamesState with _$CryptoNamesState {
    const factory CryptoNamesState.initial() = _Initial;

  const factory CryptoNamesState.loading() = _Loading;
  const factory CryptoNamesState.loadSuccess(
      CryptoListModel cryptocurrencyNames ) = _LoadSuccess;
  const factory CryptoNamesState.loadFailure(String failure) =
      _LoadFailure;
}
