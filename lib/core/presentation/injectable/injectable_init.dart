import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:picspeak/core/presentation/injectable/injectable_init.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: false, // default
)
void configureDependencies() => $initGetIt(getIt);
