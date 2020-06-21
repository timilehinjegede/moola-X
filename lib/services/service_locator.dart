import 'package:get_it/get_it.dart';
import 'package:moola_x/services/currency/currency_service_implementation.dart';
import 'package:moola_x/services/web_api/web_api.dart';
import 'package:moola_x/services/web_api/web_api_fake.dart';
import 'currency/currency_service.dart';
import 'currency/currency_service_fake.dart';
import 'storage/storage_service.dart';
import 'storage/storage_service_implementation.dart';
import '../business_logic/view_models/calculate_screen_viewmodel.dart';
import '../business_logic/view_models/choose_favorites_viewmodel.dart';

GetIt serviceLocator = GetIt.instance;

void setupServiceLocator() {

  serviceLocator.registerLazySingleton<StorageService>(() => StorageServiceImpl());
  serviceLocator.registerLazySingleton<CurrencyService>(() => CurrencyServiceImpl());
  serviceLocator.registerLazySingleton<WebApi>(() => FakeWebApi());

  serviceLocator.registerFactory<CalculateScreenViewModel>(() => CalculateScreenViewModel());
  serviceLocator.registerFactory<ChooseFavoritesViewModel>(() => ChooseFavoritesViewModel());
}
