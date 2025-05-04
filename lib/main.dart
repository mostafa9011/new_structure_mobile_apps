import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_structure/core/helpers/cache_helper.dart';
import 'package:new_structure/core/utils/bloc_observer.dart';
import 'package:new_structure/core/utils/dependency_injection/di.dart';
import 'core/helpers/flutter_secure_storge_helper.dart';
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
