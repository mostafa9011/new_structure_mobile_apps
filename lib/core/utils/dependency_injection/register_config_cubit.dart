import 'package:new_structure/config/config_cubit/config_cubit.dart';

import 'di.dart';

// register factory config cubit
void registerConfigCubit() => sl.registerFactory(() => ConfigCubit());
