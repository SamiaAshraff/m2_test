import 'package:get_it/get_it.dart';
import 'injection.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@injectableInit
void configureInjection(String env) {
  getIt.init();
}
