import 'package:new_structure/config/config_cubit/config_cubit.dart';

import 'di.dart';

// register config cubit
void registerConfigCubit() => sl.registerSingleton<ConfigCubit>(
      ConfigCubit(),
    );
