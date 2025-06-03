import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/cache_helper.dart';
import 'core/helpers/flutter_secure_storge_helper.dart';
import 'core/utils/bloc_observer.dart';
import 'core/utils/dependency_injection/di.dart';
import 'my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDependencies();
  await CacheHelper.init();
  await FlutterSecureStorageHelper.init();
  await ScreenUtil.ensureScreenSize();
  Bloc.observer = MyBlocObserver();

  runApp(
    const MyApp(),
  );
}
