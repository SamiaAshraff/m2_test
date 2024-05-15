import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:m2_test/constants/constants.dart';
import 'package:web_socket_channel/io.dart';

class CryptoPairWebSocketStream extends StatefulWidget {
  final String coinPair;

  const CryptoPairWebSocketStream({super.key, required this.coinPair});

  @override
  State<CryptoPairWebSocketStream> createState() =>
      _CryptoPairWebSocketStreamState();
}

class _CryptoPairWebSocketStreamState extends State<CryptoPairWebSocketStream> {
  late String coinName = widget.coinPair;
  late IOWebSocketChannel channel;
  String priceValue = '0';
  @override
  void initState() {
    streamListener();

    super.initState();
  }

  @override
  void dispose() {
    channel.sink.close();
    super.dispose();
  }

  streamListener() {
    channel = IOWebSocketChannel.connect(
        'wss://fstream.binance.com/ws/$coinName@aggTrade');
    channel.stream.listen((message) {
      Map data = jsonDecode(message);
      if (mounted) {
        setState(() {
          priceValue = data['p'];
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return priceValue == '0'
        ? CircularProgressIndicator()
        : Text(
            priceValue,
            style: f16blackBold,
          );
  }
}
