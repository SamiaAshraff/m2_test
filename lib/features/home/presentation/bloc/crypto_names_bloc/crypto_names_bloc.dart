import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:m2_test/features/home/data/crypto_list_model/crypto_list_model.dart';
import 'package:m2_test/features/home/data/repository/i_crypto_names_repo.dart';

part 'crypto_names_event.dart';
part 'crypto_names_state.dart';
part 'crypto_names_bloc.freezed.dart';

@injectable
class CryptoNamesBloc extends Bloc<CryptoNamesEvent, CryptoNamesState> {
  final ICryptoNamesRepo _cryptoNamesRepo;

  CryptoNamesBloc(this._cryptoNamesRepo)
      : super(const CryptoNamesState.initial());
  @override
  Stream<CryptoNamesState> mapEventToState(
    CryptoNamesEvent event,
  ) async* {
    yield* event.map(
      getCryptoNames: (e) async* {
        yield const CryptoNamesState.loading();
        final data = await _cryptoNamesRepo.getCryptoNames();
        yield data.fold((l) => CryptoNamesState.loadFailure(l),
            (r) => CryptoNamesState.loadSuccess(r));
      },

      // },
    );
  }
}
