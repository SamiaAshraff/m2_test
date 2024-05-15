import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:m2_test/features/home/home.dart';
import 'package:m2_test/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  configureInjection(Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
