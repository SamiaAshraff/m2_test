// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:m2_test/features/cryptocurriences_pairs/data/repository/crypto_currency_pairs_repo.dart'
    as _i4;
import 'package:m2_test/features/cryptocurriences_pairs/data/repository/i_crypto_currency_pairs_repo.dart'
    as _i3;
import 'package:m2_test/features/cryptocurriences_pairs/presentation/crypto_pairs_bloc/crypto_pairs_bloc.dart'
    as _i8;
import 'package:m2_test/features/home/data/repository/crypto_names_repo.dart'
    as _i6;
import 'package:m2_test/features/home/data/repository/i_crypto_names_repo.dart'
    as _i5;
import 'package:m2_test/features/home/presentation/bloc/crypto_names_bloc/crypto_names_bloc.dart'
    as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.ICryptoCurrencyPairsRepo>(
        () => _i4.CryptoCurrencyPairsRepo());
    gh.lazySingleton<_i5.ICryptoNamesRepo>(() => _i6.CryptoNamesRepo());
    gh.factory<_i7.CryptoNamesBloc>(
        () => _i7.CryptoNamesBloc(gh<_i5.ICryptoNamesRepo>()));
    gh.factory<_i8.CryptoPairsBloc>(
        () => _i8.CryptoPairsBloc(gh<_i3.ICryptoCurrencyPairsRepo>()));
    return this;
  }
}
