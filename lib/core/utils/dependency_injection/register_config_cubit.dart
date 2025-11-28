import '../../config/config_cubit/config_cubit.dart';
import 'di.dart';

// register factory config cubit
void registerConfigCubit() => getIt.registerFactory(() => ConfigCubit());
