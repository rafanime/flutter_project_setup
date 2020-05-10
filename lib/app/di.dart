import 'package:get_it/get_it.dart';
import 'package:projectname/services/_index.dart';

GetIt sl = GetIt.instance;

Future<void> initDI() async {
  // Services

  sl.registerLazySingleton(() => AuthService());
}
