import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:m2_test/constants/constants.dart';
import 'package:m2_test/features/cryptocurriences_pairs/presentation/crypto_pairs_bloc/crypto_pairs_bloc.dart';
import 'package:m2_test/features/cryptocurriences_pairs/view/cryptopair_web_socket_stream.dart';
import 'package:m2_test/injection.dart';

class CryptocurrenciesPairs extends StatelessWidget {
  const CryptocurrenciesPairs({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CryptoPairsBloc>(
      create: (context) => getIt<CryptoPairsBloc>()
        ..add(const CryptoPairsEvent.getCryptoPairs()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List of Cryptocurrency Pairs'),
        ),
        body: BlocBuilder<CryptoPairsBloc, CryptoPairsState>(
          builder: (context, state) {
            return state.when(
                initial: () => Container(),
                loading: () => const Center(child: CircularProgressIndicator()),
                loadSuccess: (success) {
                  return Column(
                    children: [
                      Expanded(
                        child: BlocBuilder<CryptoPairsBloc, CryptoPairsState>(
                          builder: (context, state) {
                            return state.when(
                                initial: () => Container(),
                                loading: () => const Center(
                                    child: CircularProgressIndicator()),
                                loadSuccess: (success) {
                                  final cryptoPairs = success;
                                  return Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: SingleChildScrollView(
                                      child: ListView.builder(
                                          itemCount: cryptoPairs.length,
                                          shrinkWrap: true,
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Card(
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10,
                                                        vertical: 15),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Text(
                                                      cryptoPairs[index]
                                                          .toString(),
                                                      style: f14black,
                                                    ),
                                                    CryptoPairWebSocketStream(
                                                        coinPair:
                                                            cryptoPairs[index]
                                                                .toLowerCase()
                                                                .toString())
                                                  ],
                                                ),
                                              ),
                                            );
                                          }),
                                    ),
                                  );
                                },
                                loadFailure: (e) => Text(e.toString()));
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 30),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor: black,
                                backgroundColor: Colors.purple[200]),
                            onPressed: () {
                              context
                                  .read<CryptoPairsBloc>()
                                  .add(const CryptoPairsEvent.getCryptoPairs());
                            },
                            child: const Text('Load more')),
                      ),
                    ],
                  );
                },
                loadFailure: (e) => Text(e.toString()));
          },
        ),
      ),
    );
  }
}
