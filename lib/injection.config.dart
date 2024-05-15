// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:m2_test/features/home/data/repository/crypto_names_repo.dart'
    as _i4;
import 'package:m2_test/features/home/data/repository/i_crypto_names_repo.dart'
    as _i3;
import 'package:m2_test/features/home/presentation/bloc/crypto_names_bloc.dart'
    as _i5;

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
    gh.lazySingleton<_i3.ICryptoNamesRepo>(() => _i4.CryptoNamesRepo());
    gh.factory<_i5.CryptoNamesBloc>(
        () => _i5.CryptoNamesBloc(gh<_i3.ICryptoNamesRepo>()));
    return this;
  }
}
