import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:m2_test/features/home/data/repository/i_crypto_names_repo.dart';

part 'crypto_pairs_event.dart';
part 'crypto_pairs_state.dart';
part 'crypto_pairs_bloc.freezed.dart';

@injectable
class CryptoPairsBloc extends Bloc<CryptoPairsEvent, CryptoPairsState> {
  final ICryptoNamesRepo _cryptoNamesRepo;

  CryptoPairsBloc(this._cryptoNamesRepo)
      : super(const CryptoPairsState.initial());
  int page = 0;
  List<String> cryptoPairsTempList = [];
  @override
  Stream<CryptoPairsState> mapEventToState(
    CryptoPairsEvent event,
  ) async* {
    yield* event.map(
      getCryptoPairs: (e) async* {
        yield const CryptoPairsState.loading();

        final data = await _cryptoNamesRepo.getCryptoPairs(pageNo: page);
        page = page + 1;
        yield data.fold((l) => CryptoPairsState.loadFailure(l), (r) {
          cryptoPairsTempList = cryptoPairsTempList + r;
          return CryptoPairsState.loadSuccess(cryptoPairsTempList);
        });
      },
    );
  }
}
