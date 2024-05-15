part of 'crypto_list_cubit.dart';

@freezed
class CryptoListState with _$CryptoListState {
  const factory CryptoListState.initial() = _Initial;
  const factory CryptoListState.loading() = _Loading;
  const factory CryptoListState.success(CryptoListModel cryptocurrencyNames) =
      _Success;
  const factory CryptoListState.error(String errorMessage) = _Error;
}
