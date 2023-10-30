
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'network/network_info.dart';
import 'preferences/app_preferences.dart';
import 'preferences/app_preferences_impl.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  final PrettyDioLogger logger = PrettyDioLogger(
    requestHeader: true,
    requestBody: true,
    responseHeader: false,
    error: true,
    compact: true,
  );
  getIt.registerLazySingleton<PrettyDioLogger>(() => logger);

  final connectivity = Connectivity();
  final sharePreferences = await SharedPreferences.getInstance();

  final networkInfo = NetworkInfoImpl(connectivity);
  getIt.registerLazySingleton<NetworkInfo>(() => networkInfo);

  final appPreferences = AppPreferencesIMPL(sharePreferences);
  getIt.registerLazySingleton<AppPreferences>(() => appPreferences);

}
