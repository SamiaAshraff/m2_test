import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:m2_test/constants/constants.dart';
import 'package:m2_test/features/cryptocurriences_pairs/view/cryptocurriences_pairs.dart';
import 'package:m2_test/features/home/presentation/bloc/crypto_names_bloc/crypto_names_bloc.dart';
import 'package:m2_test/features/home/view/search_widget.dart';

import 'package:m2_test/injection.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CryptoNamesBloc>(
      create: (context) => getIt<CryptoNamesBloc>()
        ..add(const CryptoNamesEvent.getCryptoNames()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List of Cryptocurrencies'),
        ),
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<CryptoNamesBloc, CryptoNamesState>(
                builder: (context, state) {
                  return state.when(
                      initial: () => Container(),
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      loadSuccess: (success) {
                        final crytocurrencies = success.assets;
                        return Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                    height: 50,
                                    child: SearchWidget(
                                      searchList: crytocurrencies,
                                    )),
                                h20,
                                ListView.builder(
                                    itemCount: crytocurrencies.length,
                                    shrinkWrap: true,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return Card(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 15),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                crytocurrencies[index]
                                                    .asset
                                                    .toString(),
                                                style: f14black,
                                              ),
                                              const FavouriteCrypto()
                                            ],
                                          ),
                                        ),
                                      );
                                    }),
                              ],
                            ),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CryptocurrenciesPairs()),
                    );
                  },
                  child: const Text('View Cryptocurrency Pairs')),
            ),
          ],
        ),
      ),
    );
  }
}

class FavouriteCrypto extends HookWidget {
  const FavouriteCrypto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final fav = useState(false);
    return IconButton(
      onPressed: () {
        fav.value = !fav.value;
      },
      icon: fav.value
          ? const Icon(
              Icons.favorite,
              color: Colors.black,
            )
          : const Icon(Icons.favorite_border),
    );
  }
}
